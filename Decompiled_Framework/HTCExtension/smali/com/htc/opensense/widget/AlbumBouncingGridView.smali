.class public abstract Lcom/htc/opensense/widget/AlbumBouncingGridView;
.super Lcom/htc/opensense/widget/AlbumGridView;
.source "AlbumBouncingGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/AlbumBouncingGridView$1;,
        Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_OVER_BOUNDARY_THRESHOLD:I


# instance fields
.field protected mBouncingEnabled:Z

.field private mChildrenTotalHeight:I

.field private mContext:Landroid/app/Activity;

.field private final mDeceleration:F

.field private mEnableScrollOverBottomBoundary:Z

.field private mEnableScrollOverTopBoundary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;-><init>(Landroid/content/Context;)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverBottomBoundary:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mDeceleration:F

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverBottomBoundary:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mDeceleration:F

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, 0x7fffffff

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverTopBoundary:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverBottomBoundary:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mDeceleration:F

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/AlbumBouncingGridView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverTopBoundary(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense/widget/AlbumBouncingGridView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/widget/AlbumBouncingGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverTopBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense/widget/AlbumBouncingGridView;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/opensense/widget/AlbumBouncingGridView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverBottonBoundary()Z

    move-result v0

    return v0
.end method

.method private disableScrollOverBoundary()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverTopBoundary(Z)V

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const v9, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v2, v4, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    sub-int v3, v4, v5

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    if-gtz v2, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverTopBoundary(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    if-gtz v3, :cond_1

    invoke-direct {p0, v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->enableScrollOverBottomBoundary(Z)V

    :cond_1
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-eqz v4, :cond_4

    iput v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    :cond_2
    :goto_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->requestLayout()V

    :cond_3
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    :cond_5
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_6

    iput v1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    goto :goto_0

    :cond_6
    iput v9, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    goto :goto_0
.end method

.method private doTrackMotionScrollWithConstrain(II)V
    .locals 2

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverTopBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->trackMotionScrollWithConstrain(II)V

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverBottonBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/opensense/widget/AlbumGridView;->trackMotionScrollWithConstrain(II)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumGridView;->trackMotionScrollWithConstrain(II)V

    goto :goto_0
.end method

.method private enableScrollOverBottomBoundary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverBottomBoundary:Z

    return-void
.end method

.method private enableScrollOverTopBoundary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverTopBoundary:Z

    return-void
.end method

.method private getEstimateDistance(F)I
    .locals 10

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_0

    move v5, v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getNumColumns()I

    move-result v9

    div-int v2, v8, v9

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getVerticalSpacing()I

    move-result v8

    add-int/2addr v8, v5

    mul-int/2addr v8, v2

    sub-int/2addr v8, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTopBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v1, v8, v9

    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getLastVisiblePosition()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getNumColumns()I

    move-result v9

    div-int v7, v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getBottomBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, v8, v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getNumColumns()I

    move-result v9

    div-int/2addr v8, v9

    sub-int/2addr v8, v7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getVerticalSpacing()I

    move-result v9

    add-int/2addr v9, v5

    mul-int/2addr v8, v9

    add-int v1, v8, v6

    goto :goto_1

    :cond_3
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method private getTotalDistance(F)I
    .locals 3

    mul-float v0, p1, p1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isOverBottonBoundary()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getBottomBorderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverTopBoundary()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTopBorderHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkViewInHirerarchy(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    const-string v1, "AlbumBouncingGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not the same as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method enableStopScrollNow()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->enableStopScrollNow()Z

    move-result v0

    return v0
.end method

.method getBottomBoundary()I
    .locals 2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getBottomBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumBouncingGridView;Lcom/htc/opensense/widget/AlbumBouncingGridView$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    goto :goto_0
.end method

.method public getSelectedChild()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getTopBoundary()I
    .locals 2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mEnableScrollOverTopBoundary:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->getTopBoundary()I

    move-result v0

    goto :goto_0
.end method

.method onFling(I)V
    .locals 5

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverTopBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverBottonBoundary()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->onUp()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTotalDistance(F)I

    move-result v1

    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getEstimateDistance(F)I

    move-result v0

    if-le v1, v0, :cond_4

    if-gtz p1, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;

    neg-int v3, v0

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method onScrollToBoundary()V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->onScrollToBoundary()V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->endFling()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->onScrollToBoundary()V

    goto :goto_0
.end method

.method onUp()V
    .locals 6

    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-nez v3, :cond_0

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->onUp()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getDefaultFlingRunnable()Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    :cond_1
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverTopBoundary()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTopBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->isOverBottonBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getBottomBorderHeight()I

    move-result v4

    sub-int v0, v3, v4

    iget v3, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mChildrenTotalHeight:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->getTopBorderHeight()I

    move-result v4

    add-int v1, v3, v4

    if-ge v1, v0, :cond_3

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Lcom/htc/opensense/widget/AlbumBouncingGridView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->onUp()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V

    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumGridView;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setBouncingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->disableScrollOverBoundary()V

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/AlbumGridView;->setSelection(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    iget-object v0, v0, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    invoke-virtual {v0}, Lcom/htc/widget/HtcScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView;->mFlingRunnable:Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView$FlingRunnable;->stop()V

    :cond_0
    return-void
.end method

.method trackMotionScrollWithConstrain(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumBouncingGridView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumBouncingGridView;->doTrackMotionScrollWithConstrain(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/AlbumGridView;->trackMotionScrollWithConstrain(II)V

    goto :goto_0
.end method
