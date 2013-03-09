.class public Lcom/htc/widget/HtcListViewCore;
.super Lcom/htc/widget/HtcAbsListView;
.source "HtcListViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListViewCore$1;,
        Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListViewCore$FocusSelector;,
        Lcom/htc/widget/HtcListViewCore$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAddedCounter:I

.field private mAdjustFooter:Z

.field private mAdjustForSipOff:Z

.field private mAdjustForSipOn:Z

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

.field private mFootHeight:I

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mForceAdjustFooter:Z

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewWithoutDivider:Landroid/view/View;

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field private mKeepFootHeight:I

.field private mKeepFootHeightUpdated:Z

.field private mLastItemCnt:I

.field private mRelayout:Z

.field private mScreenBottom:I

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field protected mSpeedUp:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    new-instance v7, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListViewCore$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    const/16 v7, 0xc3

    iput v7, p0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    iput v11, p0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    iput v9, p0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080669

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->setDividerHeight(I)V

    :cond_3
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception v3

    const-string v7, "HtcListViewCore"

    const-string v8, "resource not found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    add-int/lit8 v2, p2, -0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int v3, v0, v5

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    add-int/lit8 v2, p2, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int v3, v0, v4

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int/2addr v2, v3

    :cond_4
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    const/16 v10, 0x82

    if-ne p1, v10, :cond_5

    add-int/lit8 v3, v7, -0x1

    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v1, v4

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_2

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_2
    const/4 v10, -0x1

    if-eq p2, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_3

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ne v10, v11, :cond_4

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v10, -0x1

    if-eq p2, v10, :cond_6

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    :cond_6
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move v2, v5

    if-lez v8, :cond_7

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_8

    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_9

    const/4 v10, 0x0

    goto :goto_0

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v10, :cond_a

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_0
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListViewCore;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    const/4 v14, -0x1

    if-eq v10, v14, :cond_a

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v10, v9, :cond_1

    :cond_0
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v10, v9, :cond_a

    :cond_1
    const/4 v14, 0x0

    :goto_1
    return-object v14

    :cond_2
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v5, v15, v14

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    move v13, v5

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v2, 0x1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v4, v15, v14

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    move v13, v4

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/htc/widget/HtcListViewCore;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getMaxScrollAmount()I

    move-result v6

    if-ge v3, v6, :cond_b

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/widget/HtcListViewCore;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcListViewCore;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    goto/16 :goto_1

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore;->amountToScroll(II)I

    move-result v0

    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_a

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    :cond_2
    if-eqz v1, :cond_b

    move v3, v7

    :goto_2
    if-eq v4, v9, :cond_4

    if-eqz v1, :cond_c

    move v6, v7

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/htc/widget/HtcListViewCore;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    :cond_4
    if-lez v0, :cond_5

    const/16 v6, 0x21

    if-ne p1, v6, :cond_d

    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    const/4 v3, 0x1

    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_6
    if-ne v4, v9, :cond_7

    if-eqz v5, :cond_7

    invoke-direct {p0, v5, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->hideSelector()V

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    :cond_7
    if-eqz v3, :cond_0

    if-eqz v5, :cond_8

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    :cond_8
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    move v8, v7

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_b
    move v3, v8

    goto :goto_2

    :cond_c
    move v6, v8

    goto :goto_3

    :cond_d
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v0, v4, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    sparse-switch p1, :sswitch_data_1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_a

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->resurrectSelection()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListViewCore;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    const/16 v4, 0x42

    invoke-direct {p0, v4}, Lcom/htc/widget/HtcListViewCore;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    goto :goto_1

    :sswitch_5
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v4, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->keyPressed()V

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore;->pageScroll(I)Z

    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->pageScroll(I)Z

    goto :goto_2

    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v8

    sub-int v1, v7, v8

    sub-int v0, v1, v4

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v0, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_2

    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v9

    add-int v6, v8, v9

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v9

    sub-int v0, v8, v9

    sub-int v7, v2, v6

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    if-lez v7, :cond_2

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    :cond_0
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_2

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    sub-int v6, p2, p1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-gt v8, v6, :cond_0

    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v8

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v13

    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, v10, v2}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    :goto_1
    return-object v10

    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11

    const/4 v3, 0x1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :cond_0
    :goto_1
    return-object v10

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    :cond_3
    :goto_2
    if-nez v5, :cond_0

    if-eqz v6, :cond_5

    move-object v10, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_2

    :cond_5
    move-object v10, v7

    goto :goto_1
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2

    move v0, p1

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 7

    const/16 v5, 0x11

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10

    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v5, 0x0

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    iget v8, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    const/16 v8, 0x21

    if-ne p2, v8, :cond_3

    move v7, v2

    move v1, v4

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v0, p1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    if-eqz v6, :cond_1

    if-nez p4, :cond_4

    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v6, v7, v3}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez p4, :cond_5

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v0, v1, v3}, Lcom/htc/widget/HtcListViewCore;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_2
    return-void

    :cond_3
    move v7, v4

    move v1, v2

    move-object v6, p1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 7

    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v3

    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8

    const/4 v6, -0x1

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    const/16 v7, 0x82

    if-eq p1, v7, :cond_0

    const/16 v7, 0x42

    if-ne p1, v7, :cond_6

    :cond_0
    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_2

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    :goto_0
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_3

    move v4, v6

    :cond_1
    :goto_1
    return v4

    :cond_2
    move v5, v1

    goto :goto_0

    :cond_3
    if-ge v5, v1, :cond_4

    move v5, v1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v4, v5

    :goto_2
    if-gt v4, v3, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    :goto_3
    if-gez v5, :cond_8

    move v4, v6

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    :cond_8
    if-le v5, v2, :cond_9

    move v5, v2

    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v4, v5

    :goto_4
    if-lt v4, v1, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_b
    move v4, v6

    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    :goto_0
    return-object v8

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/htc/widget/HtcListViewCore;->getTopSelectionPixel(III)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Lcom/htc/widget/HtcListViewCore;->getBottomSelectionPixel(III)I

    move-result v8

    if-lez p3, :cond_2

    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    :goto_0
    return-object v14

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    :goto_1
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_3

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    move/from16 v0, p4

    if-ge v4, v0, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/htc/widget/HtcListViewCore;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    add-int v2, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int v0, v3, v4

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v3, v1, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    :cond_1
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v9, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v9, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/htc/widget/HtcListViewCore;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->offsetChildrenTopAndBottom(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v9, v4, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 28

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->shouldShowSelector()Z

    move-result v25

    if-eqz v25, :cond_e

    const/4 v14, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v25

    move/from16 v0, v25

    if-eq v14, v0, :cond_f

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    move/from16 v16, v0

    if-lez v16, :cond_10

    const/16 v25, 0x3

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    const/4 v13, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v25

    move/from16 v0, v25

    if-eq v13, v0, :cond_11

    const/16 v22, 0x1

    :goto_4
    if-eqz p7, :cond_2

    if-nez v23, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_12

    :cond_2
    const/16 v17, 0x1

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    if-nez v18, :cond_3

    new-instance v18, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x2

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    if-eqz p7, :cond_4

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    :cond_4
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    :cond_5
    if-eqz p4, :cond_13

    const/16 v25, -0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    if-eqz v23, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    if-eqz v22, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v25, p1

    check-cast v25, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v26

    invoke-interface/range {v25 .. v26}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_8
    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    move-object/from16 v0, v18

    iget v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v15, :cond_17

    const/high16 v25, 0x4000

    move/from16 v0, v25

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v6}, Landroid/view/View;->measure(II)V

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFooterViewsCount()I

    move-result v25

    if-lez v25, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    move/from16 v1, p2

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    sub-int v25, v25, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    if-gez p3, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeightUpdated:Z

    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    :cond_b
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-nez v25, :cond_1e

    :cond_d
    :goto_d
    if-eqz p4, :cond_24

    move/from16 v8, p3

    :goto_e
    if-eqz v17, :cond_25

    add-int v7, p5, v24

    add-int v5, v8, v11

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v8, v7, v5}, Landroid/view/View;->layout(IIII)V

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_13
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_14
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->forceAdd:Z

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/htc/widget/HtcAbsListView$LayoutParams;->recycledHeaderFooter:Z

    :cond_15
    if-eqz p4, :cond_16

    const/16 v25, -0x1

    :goto_10
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v18

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_7

    :cond_16
    const/16 v25, 0x0

    goto :goto_10

    :cond_17
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto/16 :goto_8

    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    sub-int v25, v25, p3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    goto/16 :goto_b

    :cond_1b
    if-nez p2, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    sub-int v26, p3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v27

    add-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v26

    add-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v26

    sub-int v21, v25, v26

    const/4 v12, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v12, v0, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    sub-int v21, v21, v25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getDividerHeight()I

    move-result v25

    sub-int v21, v21, v25

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_1c
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mAddedCounter:I

    goto :goto_11

    :cond_1d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mKeepFootHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore;->mFootHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_13
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    goto/16 :goto_d

    :cond_20
    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_13

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    move/from16 v25, v0

    if-nez v25, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    :cond_22
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->removeViewInLayout(Landroid/view/View;)V

    const/16 v25, -0x2

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListViewCore;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mScreenBottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/widget/ListAdapter;->getCount()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcListViewCore;->mLastItemCnt:I

    :cond_23
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    goto/16 :goto_d

    :cond_24
    sub-int v8, p3, v11

    goto/16 :goto_e

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v25

    sub-int v25, p5, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v25, v8, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_f
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    new-instance v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addHeaderViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method arrowScroll(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    if-lez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    const/4 v10, 0x1

    :goto_0
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    sub-int v23, v23, v24

    add-int/lit8 v14, v23, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->isOpaque()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v23

    if-nez v23, :cond_5

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getCacheColorHint()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v24, v0

    add-int v18, v23, v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v8, :cond_b

    if-nez v16, :cond_1

    add-int v23, v12, v17

    move/from16 v0, v23

    if-lt v0, v15, :cond_3

    :cond_1
    if-nez v13, :cond_2

    add-int v23, v12, v17

    move/from16 v0, v23

    if-ge v0, v14, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    iput v5, v6, Landroid/graphics/Rect;->top:I

    add-int v23, v5, v9

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v21, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v8, :cond_a

    if-nez v16, :cond_7

    add-int v23, v12, v17

    move/from16 v0, v23

    if-lt v0, v15, :cond_9

    :cond_7
    if-nez v13, :cond_8

    add-int v23, v12, v17

    move/from16 v0, v23

    if-ge v0, v14, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    sub-int v23, v22, v9

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v0, v22

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewWithoutDivider:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    if-eq v0, v7, :cond_9

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_a
    if-lez v8, :cond_b

    if-lez v21, :cond_b

    if-eqz v10, :cond_b

    move/from16 v0, v18

    iput v0, v6, Landroid/graphics/Rect;->top:I

    add-int v23, v18, v9

    move/from16 v0, v23

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v6, v2}, Lcom/htc/widget/HtcListViewCore;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_b
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-gt v3, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->shouldDrawSeperatorDivider(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    :goto_0
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    return-object v8

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int p2, v0, v1

    if-eqz v5, :cond_3

    move-object v8, v6

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_1

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    add-int v1, v2, v3

    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooHigh(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int v1, v2, v3

    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore;->correctTooLow(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_2
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    if-le p2, v7, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    return-object v8

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_3

    move-object v8, v6

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method protected findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore$FixedViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x21

    if-ne p1, v2, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_0

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    :cond_2
    return v0

    :cond_3
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_4

    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getCheckedItemIds()[J

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget v8, p0, Lcom/htc/widget/HtcAbsListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v5, v3, [J

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v2, v1

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-eq v2, v3, :cond_0

    new-array v6, v2, [J

    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    goto :goto_0

    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    const v0, 0x3ea8f5c3

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isAdjustFooter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    return v0
.end method

.method public isFootAdjusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v8, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v24

    add-int v6, v2, v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v24

    sub-int v7, v2, v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v10

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    if-ltz v19, :cond_2

    move/from16 v0, v19

    if-ge v0, v10, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    sub-int v5, v2, v24

    :cond_3
    add-int v2, v19, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v19, v2, v24

    if-ltz v19, :cond_4

    move/from16 v0, v19

    if-ge v0, v10, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    move-object/from16 v22, v0

    const/4 v13, 0x0

    if-eqz v11, :cond_7

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v12}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->fillActiveViews(II)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_b

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object/from16 v13, v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->findFocus()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->requestFocus()Z

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->detachAllViewsFromParent()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    if-nez v10, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_14

    const/4 v2, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    :goto_3
    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v23, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, v23

    if-ne v0, v13, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_d
    const/4 v15, 0x1

    :goto_4
    if-nez v15, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->clearFocus()V

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    :goto_5
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    :cond_f
    :goto_6
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v14}, Landroid/view/View;->onFinishTemporaryDetach()V

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_2
    if-eqz v4, :cond_12

    :try_start_3
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/widget/HtcListViewCore;->fillFromSelection(III)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/HtcListViewCore;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    if-nez v8, :cond_13

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_13
    throw v2

    :pswitch_5
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore;->fillFromTop(I)Landroid/view/View;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore;->fillUp(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_16

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v2, v0, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v20, :cond_18

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_8

    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore;->fillSpecific(II)Landroid/view/View;

    move-result-object v23

    goto/16 :goto_3

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    if-lez v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ge v2, v0, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    :cond_1e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    iget v10, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    :goto_1
    const/4 v6, 0x0

    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    :cond_2
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v8

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    move v4, p2

    :goto_2
    if-gt v4, p3, :cond_9

    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4, p1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    if-lez v4, :cond_3

    add-int/2addr v9, v3

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v7, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    move v6, v9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move v6, v9

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-super {p0, p1, v9}, Lcom/htc/widget/HtcAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    if-nez v9, :cond_2

    instance-of v9, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore;->mSpeedUp:Z

    :cond_2
    const v9, 0x20201c8

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v10

    if-eq v9, v10, :cond_0

    const v9, 0x2020019

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v9, 0x2020018

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v9, v6, Lcom/htc/widget/HtcListItemSeparableType;

    if-eqz v9, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/htc/widget/HtcListItemSeparableType;

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemSeparableType;->getTopRound()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x1

    :cond_3
    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p1, v9, :cond_5

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getListPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBorderHeight()I

    move-result v10

    add-int v5, v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_1
    if-eqz v8, :cond_7

    if-eqz v1, :cond_7

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemSeparableType;->getBottomRound()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const v9, 0x2080693

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_7
    if-eqz v8, :cond_9

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const v9, 0x2080696

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_b

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    const v9, 0x2080694

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_b
    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    const v9, 0x2080695

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v2, -0x1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget v9, p0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    :cond_0
    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore;->mTempRect:Landroid/graphics/Rect;

    const v6, 0x7fffffff

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListViewCore;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    if-ge v3, v6, :cond_1

    move v6, v3

    move v2, v5

    goto :goto_1

    :cond_3
    if-ltz v2, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore;->setSelection(I)V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAbsListView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/htc/widget/HtcListViewCore;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v2, p1}, Lcom/htc/widget/HtcListViewCore;->measureScrapChild(Landroid/view/View;II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v0, v0, Lcom/htc/widget/HtcAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_1
    if-nez v10, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    :cond_2
    if-nez v9, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore;->measureHeightOfChildren(IIIII)I

    move-result v4

    :cond_4
    invoke-virtual {p0, v11, v4}, Lcom/htc/widget/HtcListViewCore;->setMeasuredDimension(II)V

    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mWidthMeasureSpec:I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    if-nez v5, :cond_0

    new-instance v5, Lcom/htc/widget/HtcListViewCore$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/HtcListViewCore$FocusSelector;-><init>(Lcom/htc/widget/HtcListViewCore;Lcom/htc/widget/HtcListViewCore$1;)V

    iput-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore;->mFocusSelector:Lcom/htc/widget/HtcListViewCore$FocusSelector;

    invoke-virtual {v5, v1, v4}, Lcom/htc/widget/HtcListViewCore$FocusSelector;->setup(II)Lcom/htc/widget/HtcListViewCore$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method pageScroll(I)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/16 v5, 0x21

    if-ne p1, v5, :cond_4

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget v4, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    :cond_3
    :goto_1
    return v3

    :cond_4
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;->onChanged()V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getScrollY()I

    move-result v8

    add-int v7, v8, v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getVerticalFadingEdgeLength()I

    move-result v5

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v9, v5, :cond_1

    :cond_0
    add-int/2addr v8, v5

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getChildCount()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v14, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_3

    :cond_2
    sub-int/2addr v7, v5

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    :goto_0
    sub-int v4, v1, v7

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_5

    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/htc/widget/HtcListViewCore;->scrollListItemsBy(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore;->positionSelector(Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/htc/widget/HtcAbsListView;->mSelectedTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    :cond_5
    return v10

    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int v3, v12, v8

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->clearRecycledState(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore;->clearRecycledState(Ljava/util/ArrayList;)V

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->resetList()V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->clear()V

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    new-instance v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkFocus()V

    new-instance v1, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mDataSetObserver:Lcom/htc/widget/HtcAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mRecycler:Lcom/htc/widget/HtcAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, Lcom/htc/widget/HtcListViewCore;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setAdjustFooter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustFooter:Z

    return-void
.end method

.method public setAdjustForSipOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOff:Z

    return-void
.end method

.method public setAdjustForSipOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mAdjustForSipOn:Z

    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView;->setCacheColorHint(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerIsOpaque:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    return-void

    :cond_3
    iput v0, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListViewCore;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    return-void
.end method

.method public setFootAdjusted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mRelayout:Z

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    return-void
.end method

.method public setForceAdjustFooter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mForceAdjustFooter:Z

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->invalidate()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore;->setSelection(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView;->mLayoutMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->requestLayout()V

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->layoutChildren()V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore;->awakenScrollBars()Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 0

    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0

    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
