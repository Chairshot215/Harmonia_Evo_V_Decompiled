.class public Lcom/htc/launcher/widget/PagedGridView;
.super Lcom/htc/widget/BouncingGridView;
.source "PagedGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLE_PAGE_INDICATOR:Z = true

.field private static final DEFAULT_ENABLE_SCROLL_BY_PAGE:Z = true

.field private static final DEFAULT_ENABLE_VERTICAL_SCROLLBAR:Z = false

.field private static final DEFAULT_PAGE_INDICATOR_PADDING:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_PAGE_INDICATOR_THUMB_RES:I = 0x0

.field private static final DEFAULT_PAGE_INDICATOR_TRACK_PADDING:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_PAGE_INDICATOR_TRACK_RES:I = 0x0

.field private static final PAGE_INVALID_POS:I = -0x80000000

.field private static final PREF_KEY_MAX:Ljava/lang/String; = "rosie.allApps.max"

.field private static final PREF_KEY_MIN:Ljava/lang/String; = "rosie.allApps.min"

.field private static final PREF_KEY_SCALE_DISTANCE:Ljava/lang/String; = "rosie.allApps.scaleDist"

.field private static final PREF_KEY_SCALE_VELOCITY:Ljava/lang/String; = "rosie.allApps.scaleVelo"

.field private static final PREF_KEY_SHIFT:Ljava/lang/String; = "rosie.allApps.shift"

.field private static final PREF_VALUE_MAX:I = 0x5dc

.field private static final PREF_VALUE_MIN:I = 0x1f4

.field private static final PREF_VALUE_SCALE_DISTANCE:F = 3.0f

.field private static final PREF_VALUE_SCALE_VELOCITY:F = 0.5f

.field private static final PREF_VALUE_SHIFT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PagedGridView"


# instance fields
.field private adjustDuration:Z

.field private flingRunning:Z

.field protected mEnableScrollByPage:Z

.field protected mPageIndicatorEnabled:Z

.field protected mPageIndicatorPadding:I

.field protected mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

.field protected mPageIndicatorThumbHeight:I

.field protected mPageIndicatorThumbRect:Landroid/graphics/Rect;

.field protected mPageIndicatorThumbRes:I

.field protected mPageIndicatorThumbWidth:I

.field protected mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

.field protected mPageIndicatorTrackHeight:I

.field protected mPageIndicatorTrackRect:Landroid/graphics/Rect;

.field protected mPageIndicatorTrackRes:I

.field protected mPageIndicatorTrackWidth:I

.field private max:I

.field private min:I

.field private scaleD:F

.field private scaleV:F

.field private shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isVigor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const v0, 0x7f02004f

    sput v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_THUMB_RES:I

    .line 70
    const v0, 0x7f020050

    sput v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_TRACK_RES:I

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    const v0, 0x20806ab

    sput v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_THUMB_RES:I

    .line 73
    const v0, 0x20806ac

    sput v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_TRACK_RES:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;)V

    .line 59
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    .line 78
    iput-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    .line 79
    sget v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_THUMB_RES:I

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRes:I

    .line 80
    sget v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_TRACK_RES:I

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRes:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorPadding:I

    .line 271
    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    .line 272
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    .line 273
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    .line 274
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F

    .line 275
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    .line 277
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    .line 305
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z

    .line 94
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    .line 78
    iput-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    .line 79
    sget v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_THUMB_RES:I

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRes:I

    .line 80
    sget v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_TRACK_RES:I

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRes:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorPadding:I

    .line 271
    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    .line 272
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    .line 273
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    .line 274
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F

    .line 275
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    .line 277
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    .line 305
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z

    .line 104
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/BouncingGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/htc/launcher/widget/PagedGridView;->setPageScroll(Landroid/content/Context;)V

    .line 78
    iput-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    .line 79
    sget v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_THUMB_RES:I

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRes:I

    .line 80
    sget v0, Lcom/htc/launcher/widget/PagedGridView;->DEFAULT_PAGE_INDICATOR_TRACK_RES:I

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRes:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorPadding:I

    .line 271
    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    .line 272
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    .line 273
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    .line 274
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F

    .line 275
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    .line 277
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    .line 305
    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z

    .line 99
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->init()V

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/htc/launcher/widget/PagedGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/launcher/widget/PagedGridView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->checkPagePosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/launcher/widget/PagedGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/launcher/widget/PagedGridView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    return v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/widget/PagedGridView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F

    return v0
.end method

.method static synthetic access$500(Lcom/htc/launcher/widget/PagedGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/launcher/widget/PagedGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/launcher/widget/PagedGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/htc/launcher/widget/PagedGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/launcher/widget/PagedGridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/htc/launcher/widget/PagedGridView;->enableScrollOverTopBoundary(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/launcher/widget/PagedGridView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/htc/launcher/widget/PagedGridView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method private checkPagePosition()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->hasWindowFocus()Z

    move-result v2

    .line 641
    .local v2, hasFocus:Z
    if-eqz v2, :cond_0

    iget-boolean v5, p0, Lcom/htc/launcher/widget/PagedGridView;->flingRunning:Z

    if-eqz v5, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getItemsPerPage()I

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 646
    .local v0, correctRow:Z
    :goto_1
    invoke-virtual {p0, v4}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_5

    move v1, v3

    .line 647
    .local v1, correctShift:Z
    :goto_2
    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    .line 648
    :cond_2
    new-instance v3, Lcom/htc/launcher/widget/PagedGridView$1;

    invoke-direct {v3, p0}, Lcom/htc/launcher/widget/PagedGridView$1;-><init>(Lcom/htc/launcher/widget/PagedGridView;)V

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/launcher/widget/PagedGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 645
    .end local v0           #correctRow:Z
    .end local v1           #correctShift:Z
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getItemsPerPage()I

    move-result v6

    rem-int/2addr v5, v6

    if-nez v5, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_1

    .line 646
    .restart local v0       #correctRow:Z
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-nez v5, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method private destroyPageIndicator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRect:Landroid/graphics/Rect;

    .line 138
    iput-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRect:Landroid/graphics/Rect;

    .line 139
    iput-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    .line 140
    iput-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    .line 141
    return-void
.end method

.method private getExtendedBottomBorder()I
    .locals 7

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, getTopBorderHeight:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getHeight()I

    move-result v3

    .line 446
    .local v3, viewHeight:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v5

    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v1

    .line 447
    .local v1, nbOfRowsInLastPage:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowHeight()I

    move-result v4

    mul-int/2addr v4, v1

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getListPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getListPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    sub-int v2, v4, v5

    .line 448
    .local v2, newExtBottomBorder:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 449
    :cond_0
    return v2

    .line 446
    .end local v1           #nbOfRowsInLastPage:I
    .end local v2           #newExtBottomBorder:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v5

    rem-int v1, v4, v5

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;-><init>(Lcom/htc/launcher/widget/PagedGridView;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/PagedGridView;->setVerticalScrollBarEnabled(Z)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/PagedGridView;->setPageIndicatorEnabled(Z)V

    .line 111
    return-void
.end method

.method private initPageIndicator()V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 117
    .local v1, htcRes:Landroid/content/res/Resources;
    iget v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    iget v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #htcRes:Landroid/content/res/Resources;
    :goto_0
    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbWidth:I

    .line 125
    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbHeight:I

    .line 126
    iget v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbWidth:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackWidth:I

    .line 127
    iget-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    .line 130
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRect:Landroid/graphics/Rect;

    .line 131
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRect:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->calculatePageIndicator()V

    .line 134
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private notifySQA(II)V
    .locals 7
    .parameter "oldPage"
    .parameter "newPage"

    .prologue
    .line 497
    const-string v0, "com.htc.launcher.SQA.info"

    .line 498
    .local v0, ACTION_SQA_INFO:Ljava/lang/String;
    const-string v2, "ALLAPPS_OLDPAGE"

    .line 499
    .local v2, EXTRA_ALLAPPS_OLDPAGE:Ljava/lang/String;
    const-string v1, "ALLAPPS_NEWPAGE"

    .line 500
    .local v1, EXTRA_ALLAPPS_NEWPAGE:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.SQA.info"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "ALLAPPS_NEWPAGE"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v4, "ALLAPPS_OLDPAGE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    const-string v4, "Rosie"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send SQA need info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method


# virtual methods
.method protected calculatePageIndicator()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v4, 0x0

    .line 508
    iget-object v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v11, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v3

    .line 512
    .local v3, pageCount:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getHeight()I

    move-result v11

    add-int/lit8 v2, v11, -0xa

    .line 514
    .local v2, maxTrackHeight:I
    iget v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbHeight:I

    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x2

    iput v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    .line 515
    iget v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    if-le v11, v2, :cond_2

    .line 516
    iput v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorPadding:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackWidth:I

    sub-int v9, v11, v12

    .line 519
    .local v9, trackLeft:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getHeight()I

    move-result v11

    iget v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    sub-int/2addr v11, v12

    div-int/lit8 v10, v11, 0x2

    .line 520
    .local v10, trackTop:I
    iget v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    iget v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbHeight:I

    sub-int/2addr v11, v12

    add-int/lit8 v6, v11, -0x2

    .line 525
    .local v6, thumbRange:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPosition()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowHeight()I

    move-result v12

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    mul-int/2addr v12, v13

    int-to-float v12, v12

    div-float v1, v11, v12

    .line 531
    .local v1, factor:F
    :goto_1
    if-le v3, v14, :cond_4

    iget v8, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackHeight:I

    .line 532
    .local v8, trackHeight:I
    :goto_2
    if-le v3, v14, :cond_3

    iget v4, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbHeight:I

    .line 534
    .local v4, thumbHeight:I
    :cond_3
    add-int/lit8 v5, v9, 0x1

    .line 535
    .local v5, thumbLeft:I
    int-to-float v11, v6

    mul-float/2addr v11, v1

    float-to-int v11, v11

    add-int/2addr v11, v10

    add-int/lit8 v7, v11, 0x1

    .line 537
    .local v7, thumbTop:I
    iget-object v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackWidth:I

    add-int/2addr v12, v9

    add-int v13, v10, v8

    invoke-virtual {v11, v9, v10, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 540
    iget-object v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 542
    iget-object v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRect:Landroid/graphics/Rect;

    iget v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbWidth:I

    add-int/2addr v12, v5

    add-int v13, v7, v4

    invoke-virtual {v11, v5, v7, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 544
    iget-object v11, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 526
    .end local v1           #factor:F
    .end local v4           #thumbHeight:I
    .end local v5           #thumbLeft:I
    .end local v7           #thumbTop:I
    .end local v8           #trackHeight:I
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Ljava/lang/ArithmeticException;
    const/4 v1, 0x0

    .restart local v1       #factor:F
    goto :goto_1

    .end local v0           #e:Ljava/lang/ArithmeticException;
    :cond_4
    move v8, v4

    .line 531
    goto :goto_2
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 236
    .local v0, newRet:I
    return v0
.end method

.method protected correctTooHigh(III)V
    .locals 11
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getFirstVisiblePosition()I

    move-result v8

    .line 588
    .local v8, mFirstPosition:I
    add-int v9, v8, p3

    add-int/lit8 v7, v9, -0x1

    .line 589
    .local v7, lastPosition:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v7, v9, :cond_3

    if-lez p3, :cond_3

    .line 591
    add-int/lit8 v9, p3, -0x1

    invoke-virtual {p0, v9}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 594
    .local v6, lastChild:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 596
    .local v5, lastBottom:I
    iget v9, p0, Lcom/htc/launcher/widget/PagedGridView;->mBottom:I

    iget v10, p0, Lcom/htc/launcher/widget/PagedGridView;->mTop:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getListPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getBottomBoundary()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getBottomBorderHeight()I

    move-result v10

    sub-int v1, v9, v10

    .line 600
    .local v1, end:I
    sub-int v0, v1, v5

    .line 602
    .local v0, bottomOffset:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 603
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 607
    .local v4, firstTop:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v9

    mul-int/lit8 v3, v9, 0x14

    .line 608
    .local v3, firstPosInCurrentPage:I
    if-lez v0, :cond_3

    if-gt v8, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getListPaddingTop()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 609
    :cond_0
    if-ne v8, v3, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getListPaddingTop()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 615
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/PagedGridView;->offsetChildrenTopAndBottom(I)V

    .line 616
    if-le v8, v3, :cond_3

    .line 619
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->isStackFromBottom()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int v9, v8, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, p2

    invoke-virtual {p0, v9, v10}, Lcom/htc/launcher/widget/PagedGridView;->fillUp(II)Landroid/view/View;

    .line 622
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->adjustViewsUpOrDown()V

    .line 626
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstPosInCurrentPage:I
    .end local v4           #firstTop:I
    .end local v5           #lastBottom:I
    .end local v6           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->draw(Landroid/graphics/Canvas;)V

    .line 188
    iget-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->calculatePageIndicator()V

    .line 190
    invoke-virtual {p0, p1}, Lcom/htc/launcher/widget/PagedGridView;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 192
    :cond_0
    return-void
.end method

.method protected drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 573
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 574
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorThumb:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 575
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 577
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorTrack:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableDurationAdjustment(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    .line 282
    iget-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    if-eqz v1, :cond_0

    .line 284
    :try_start_0
    const-string v1, "rosie.allApps.max"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    .line 285
    const-string v1, "rosie.allApps.min"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    .line 286
    const-string v1, "rosie.allApps.shift"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    .line 287
    const-string v1, "rosie.allApps.scaleDist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    .line 288
    const-string v1, "rosie.allApps.scaleVelo"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    if-nez v1, :cond_1

    .line 296
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    .line 297
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    .line 298
    const/high16 v1, 0x4040

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    .line 299
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F

    .line 300
    const/16 v1, 0xc8

    iput v1, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    .line 302
    :cond_1
    const-string v1, "PagedGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDurationAdjustment: min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/widget/PagedGridView;->min:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/widget/PagedGridView;->max:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shift="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/widget/PagedGridView;->shift:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scaleD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleD:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scaleV="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/widget/PagedGridView;->scaleV:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PagedGridView"

    const-string v2, "enableDurationAdjustment:"

    invoke-static {v1, v2, v0}, Lcom/htc/launcher/TFC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->adjustDuration:Z

    goto :goto_0
.end method

.method protected findMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 242
    iget-boolean v1, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    if-nez v1, :cond_1

    .line 243
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->findMotionRow(I)I

    move-result v0

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->findMotionRow(I)I

    move-result v0

    .line 247
    .local v0, row:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->isOverTopBoundary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getNumColumns()I

    move-result v2

    mul-int v0, v1, v2

    goto :goto_0
.end method

.method protected getBottomBorderHeight()I
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    if-nez v0, :cond_0

    .line 228
    invoke-super {p0}, Lcom/htc/widget/BouncingGridView;->getBottomBorderHeight()I

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->getExtendedBottomBorder()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 3

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageHeight()I

    move-result v0

    .line 430
    .local v0, pageHeight:I
    if-nez v0, :cond_0

    .line 431
    const/high16 v1, -0x8000

    .line 433
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 439
    .local v1, firstChildOffset:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getFirstVisibleRow()I

    move-result v2

    .line 440
    .local v2, firstVisibleRow:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowHeight()I

    move-result v3

    mul-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getListPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method public getFirstVisibleRow()I
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 421
    .local v0, firstVisiblePos:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getNumColumns()I

    move-result v1

    .line 422
    .local v1, numColumns:I
    if-gtz v1, :cond_0

    .line 423
    const/4 v1, 0x1

    .line 425
    :cond_0
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method protected getItemsPerPage()I
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getNumColumns()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getPageCount()I
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v0

    .line 383
    .local v0, rowPerPage:I
    if-nez v0, :cond_0

    .line 384
    const/4 v1, 0x0

    .line 386
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method protected getPageHeight()I
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowPerPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getPageHeightWithGap()I
    .locals 3

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, childrenTotalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 414
    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 413
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getNumColumns()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 416
    :cond_0
    return v0
.end method

.method public getPageIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    return v0
.end method

.method protected getRowCount()I
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getNumColumns()I

    move-result v0

    .line 373
    .local v0, numColumns:I
    if-nez v0, :cond_0

    .line 374
    const/4 v1, 0x0

    .line 376
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method protected getRowHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 399
    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/PagedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 402
    :cond_0
    return v1
.end method

.method protected getRowPerPage()I
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getRowHeight()I

    move-result v0

    .line 393
    .local v0, rowHeight:I
    if-nez v0, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 395
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/htc/widget/BouncingGridView;->layoutChildren()V

    .line 179
    iget-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->calculatePageIndicator()V

    .line 182
    :cond_0
    return-void
.end method

.method protected onFling(I)V
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 153
    iget-boolean v2, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    if-nez v2, :cond_1

    .line 154
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onFling(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->isOverTopBoundary()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->isOverBottonBoundary()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onFling(I)V

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v0

    .line 163
    .local v0, currPage:I
    if-gez p1, :cond_4

    .line 164
    add-int/lit8 v1, v0, 0x1

    .line 165
    .local v1, nextPage:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 166
    invoke-virtual {p0, v1, p1}, Lcom/htc/launcher/widget/PagedGridView;->scrollToPage(II)V

    goto :goto_0

    .line 170
    .end local v1           #nextPage:I
    :cond_4
    if-ltz v0, :cond_0

    .line 171
    invoke-virtual {p0, v0, p1}, Lcom/htc/launcher/widget/PagedGridView;->scrollToPage(II)V

    goto :goto_0
.end method

.method protected onPageChanged(II)V
    .locals 0
    .parameter "oldPage"
    .parameter "newPage"

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/widget/PagedGridView;->notifySQA(II)V

    .line 493
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/BouncingGridView;->onSizeChanged(IIII)V

    .line 146
    iget-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->calculatePageIndicator()V

    .line 148
    :cond_0
    return-void
.end method

.method protected onUp()V
    .locals 7

    .prologue
    .line 197
    iget-boolean v5, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    if-nez v5, :cond_0

    .line 198
    invoke-super {p0}, Lcom/htc/widget/BouncingGridView;->onUp()V

    .line 222
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->isOverTopBoundary()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->isOverBottonBoundary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    :cond_1
    invoke-super {p0}, Lcom/htc/widget/BouncingGridView;->onUp()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v0

    .line 209
    .local v0, currPage:I
    add-int/lit8 v3, v0, 0x1

    .line 211
    .local v3, nextPage:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageHeight()I

    move-result v5

    mul-int v1, v0, v5

    .line 212
    .local v1, currPageTop:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPosition()I

    move-result v2

    .line 215
    .local v2, currPos:I
    sub-int v5, v2, v1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_3

    .line 216
    move v4, v3

    .line 221
    .local v4, targetPage:I
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/launcher/widget/PagedGridView;->scrollToPage(II)V

    goto :goto_0

    .line 218
    .end local v4           #targetPage:I
    :cond_3
    move v4, v0

    .restart local v4       #targetPage:I
    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 635
    invoke-super {p0, p1}, Lcom/htc/widget/BouncingGridView;->onWindowFocusChanged(Z)V

    .line 636
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->checkPagePosition()V

    .line 637
    return-void
.end method

.method public pageDown()V
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v0

    .line 483
    .local v0, currPage:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/launcher/widget/PagedGridView;->scrollToPage(II)V

    goto :goto_0
.end method

.method public pageUp()V
    .locals 3

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v0

    .line 473
    .local v0, currPage:I
    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/launcher/widget/PagedGridView;->scrollToPage(II)V

    goto :goto_0
.end method

.method public scrollToPage(II)V
    .locals 4
    .parameter "page"
    .parameter "initVelocity"

    .prologue
    .line 453
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPosition()I

    move-result v0

    .line 458
    .local v0, currPos:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getPageHeight()I

    move-result v3

    mul-int v2, p1, v3

    .line 460
    .local v2, pagePos:I
    if-eq v2, v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcom/htc/launcher/widget/PagedGridView;->onPageChanged(II)V

    .line 466
    sub-int v1, v2, v0

    .line 468
    .local v1, distance:I
    iget-object v3, p0, Lcom/htc/launcher/widget/PagedGridView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;

    invoke-virtual {v3, v1, p2}, Lcom/htc/launcher/widget/PagedGridView$PagedFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0
.end method

.method public setEnableScrollByPage(Z)V
    .locals 0
    .parameter "scrollByPage"

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    .line 582
    return-void
.end method

.method public setPageIndicatorEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    .line 549
    iget-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->initPageIndicator()V

    .line 554
    :goto_0
    invoke-virtual {p0}, Lcom/htc/launcher/widget/PagedGridView;->invalidate()V

    .line 555
    return-void

    .line 552
    :cond_0
    invoke-direct {p0}, Lcom/htc/launcher/widget/PagedGridView;->destroyPageIndicator()V

    goto :goto_0
.end method

.method public setPageIndicatorPadding(I)V
    .locals 0
    .parameter "pageIndicatorPadding"

    .prologue
    .line 558
    iput p1, p0, Lcom/htc/launcher/widget/PagedGridView;->mPageIndicatorPadding:I

    .line 559
    return-void
.end method

.method public setPageScroll(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_rosie_use_pages"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 174
    .local v0, temp:Z
    :goto_0
    const-string v1, "Roman"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting page scroll to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-boolean v0, p0, Lcom/htc/launcher/widget/PagedGridView;->mEnableScrollByPage:Z

    .line 177
    return-void

    .line 173
    .end local v0           #temp:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
