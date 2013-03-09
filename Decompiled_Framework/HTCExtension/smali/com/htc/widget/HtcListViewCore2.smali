.class public Lcom/htc/widget/HtcListViewCore2;
.super Lcom/htc/widget/HtcAbsListView2;
.source "HtcListViewCore2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcListViewCore2$1;,
        Lcom/htc/widget/HtcListViewCore2$SavedState;,
        Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;,
        Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

.field private mBottomFirst:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mDividerWidth:I

.field protected mDrawEndRound:Z

.field mFakeSelectorOn:Z

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mFooterViewWithoutDivider:Landroid/view/View;

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCanFocus:Z

.field private mLastPosition:I

.field final mListSelector:Landroid/graphics/drawable/Drawable;

.field mRoundedCornerGetView:Z

.field mSeperatorDiver:Landroid/graphics/drawable/Drawable;

.field protected mSpeedUp:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field mThisContext:Landroid/content/Context;

.field private mTransparentWrap:Z

.field mUseDivider:Z

.field private mWrappingHeader:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcListViewCore2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    iput v9, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mSpeedUp:Z

    new-instance v7, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;-><init>(Lcom/htc/widget/HtcListViewCore2$1;)V

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mDrawEndRound:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    iput-boolean v9, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    iput-boolean v10, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mThisContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "list_selector_background"

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget/HtcListViewCore2;->mListSelector:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p1, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080bac

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->setDividerHeight(I)V

    :cond_4
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

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

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v3, v0, v5

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v3, v0, v5

    goto :goto_0
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    const/4 v6, 0x0

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v3, v0, v4

    :goto_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v3, v0, v4

    goto :goto_0
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v4

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int/2addr v2, v3

    :cond_0
    :goto_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v4

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int/2addr v2, v3

    :cond_5
    :goto_3
    if-lez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v3, v4, :cond_5

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int/2addr v2, v3

    goto :goto_3

    :cond_7
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    goto/16 :goto_2
.end method

.method private amountToScroll(II)I
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v12

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    move/from16 v0, p1

    if-eq v0, v15, :cond_1

    :cond_0
    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_e

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    const/16 v15, 0x42

    move/from16 v0, p1

    if-ne v0, v15, :cond_8

    add-int/lit8 v6, v12, -0x1

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, p2, v15

    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v13, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move v4, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v4, v15

    :cond_3
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v4, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_5

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-gt v15, v4, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    if-ne v15, v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v11, v15, v9

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    goto :goto_0

    :cond_7
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v1, v15, v4

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, p2, v15

    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v13, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move v3, v8

    if-lez v13, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v3, v15

    :cond_a
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_c

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_c

    const/4 v15, 0x0

    goto :goto_0

    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-lt v15, v3, :cond_a

    const/4 v15, 0x0

    goto :goto_0

    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ne v15, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v15, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v11, v8, v15

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_d
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v1, v3, v15

    goto :goto_3

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v15, Landroid/graphics/Rect;->top:I

    const/16 v15, 0x21

    move/from16 v0, p1

    if-eq v0, v15, :cond_f

    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_6

    :cond_f
    const/16 v15, 0x82

    move/from16 v0, p1

    if-ne v0, v15, :cond_15

    add-int/lit8 v6, v12, -0x1

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, p2, v15

    :cond_10
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v13, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move v2, v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    sub-int/2addr v2, v15

    :cond_11
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_13

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v15, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_13

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-gt v15, v2, :cond_11

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    if-ne v15, v2, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v15, v7

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v1, v15, v2

    goto :goto_4

    :cond_15
    const/4 v6, 0x0

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, p2, v15

    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v13, v15, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move v5, v10

    if-lez v13, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v15

    add-int/2addr v5, v15

    :cond_17
    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_19

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_19

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-lt v15, v5, :cond_17

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_19
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    if-ne v15, v5, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v1

    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v15, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v11, v10, v15

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int v1, v5, v15

    goto :goto_5
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/16 v3, 0x21

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v4

    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x11

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v4

    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    const/16 v3, 0x42

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v3, v2, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v1

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v14

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    :goto_0
    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->positionOfNewFocus(Landroid/view/View;)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v15, v0, :cond_14

    invoke-direct/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePositionOnScreen(I)I

    move-result v17

    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v0, v17

    if-lt v0, v15, :cond_3

    :cond_1
    const/16 v22, 0x21

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    :cond_2
    move/from16 v0, v17

    if-le v0, v15, :cond_14

    :cond_3
    const/16 v22, 0x0

    :goto_1
    return-object v22

    :cond_4
    const/16 v22, 0x82

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_3
    add-int v11, v23, v22

    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v11, :cond_7

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v21

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_0

    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    :cond_7
    move/from16 v21, v11

    goto :goto_4

    :cond_8
    const/16 v22, 0x42

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_9

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-eqz v7, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_7
    add-int v9, v23, v22

    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v9, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v20

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    const/16 v22, 0x0

    goto :goto_7

    :cond_b
    move/from16 v20, v9

    goto :goto_8

    :cond_c
    const/16 v22, 0x11

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    const/16 v16, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v16, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_a
    sub-int v10, v23, v22

    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v10, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v20

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    :cond_d
    const/16 v16, 0x0

    goto :goto_9

    :cond_e
    const/16 v22, 0x0

    goto :goto_a

    :cond_f
    move/from16 v20, v10

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    const/4 v5, 0x1

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    if-eqz v5, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getArrowScrollPreviewLength()I

    move-result v22

    :goto_d
    sub-int v8, v23, v22

    if-eqz v18, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v8, :cond_13

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v21

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    :cond_11
    const/4 v5, 0x0

    goto :goto_c

    :cond_12
    const/16 v22, 0x0

    goto :goto_d

    :cond_13
    move/from16 v21, v8

    goto :goto_e

    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lcom/htc/widget/HtcListViewCore2;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getMaxScrollAmount()I

    move-result v12

    if-ge v6, v12, :cond_15

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v6}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->distanceToView(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v12, :cond_16

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->requestFocus(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v12}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->populate(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mArrowScrollFocusResult:Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-object/from16 v22, v0

    goto/16 :goto_1

    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/htc/widget/HtcListViewCore2;->amountToScroll(II)I

    move-result v0

    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_9

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->arrowScrollFocused(I)Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/widget/HtcListViewCore2$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    :cond_2
    if-eqz v1, :cond_a

    move v3, v7

    :goto_2
    if-eq v4, v9, :cond_4

    if-eqz v1, :cond_b

    move v6, v7

    :goto_3
    invoke-direct {p0, v5, p1, v4, v6}, Lcom/htc/widget/HtcListViewCore2;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    :cond_4
    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x11

    if-ne p1, v6, :cond_c

    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    :goto_5
    const/4 v3, 0x1

    :cond_5
    iget-boolean v6, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    :cond_6
    if-ne v4, v9, :cond_7

    if-eqz v5, :cond_7

    invoke-direct {p0, v5, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->hideSelector()V

    iput v9, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    :cond_7
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v5, :cond_8

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    move v8, v7

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    move v3, v8

    goto :goto_2

    :cond_b
    move v6, v8

    goto :goto_3

    :cond_c
    neg-int v0, v0

    goto :goto_4

    :cond_d
    const/16 v6, 0x21

    if-ne p1, v6, :cond_e

    :goto_7
    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    goto :goto_5

    :cond_e
    neg-int v0, v0

    goto :goto_7

    :cond_f
    if-eqz v5, :cond_8

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    goto :goto_6
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9

    const/16 v8, 0x82

    const/16 v7, 0x42

    const/16 v6, 0x21

    const/16 v5, 0x11

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-gez v4, :cond_3

    sparse-switch p1, :sswitch_data_0

    :cond_3
    sparse-switch p1, :sswitch_data_1

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_5
    if-nez v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->resurrectSelection()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_2
    if-lez p2, :cond_4

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_8

    :goto_3
    if-lez p2, :cond_7

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    if-eq v4, v2, :cond_4

    iput v2, p0, Lcom/htc/widget/HtcListViewCore2;->mLastPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_9

    :goto_4
    if-lez p2, :cond_4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_a
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_b

    :goto_5
    if-lez p2, :cond_4

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->arrowScroll(I)Z

    move-result v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->fullScroll(I)Z

    move-result v1

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    goto/16 :goto_1

    :sswitch_5
    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v4, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->keyPressed()V

    :cond_d
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->unPressedUnSelectChildren(Landroid/view/View;)V

    goto :goto_6

    :sswitch_6
    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->pageScroll(I)Z

    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListViewCore2;->pageScroll(I)Z

    goto :goto_7

    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    nop

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
    .locals 13

    const/4 v12, 0x0

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v10, p1

    add-int/lit8 v7, v10, -0x1

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v10, p1, -0x1

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v11

    sub-int v1, v10, v11

    sub-int v9, v1, v8

    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lez v9, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v10, :cond_0

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    if-ge v3, v10, :cond_2

    :cond_0
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_1
    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBoundary()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v11

    sub-int v1, v10, v11

    sub-int v0, v1, v5

    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lez v0, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v4, v10, :cond_2

    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v4

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private correctTooLow(I)V
    .locals 14

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v11, :cond_2

    if-lez p1, :cond_2

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v12

    add-int v9, v11, v12

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v12

    sub-int v0, v11, v12

    sub-int v8, v2, v9

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    if-lez v8, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_0

    if-le v7, v0, :cond_2

    :cond_0
    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_1

    sub-int v11, v7, v0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_1
    neg-int v11, v8

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBoundary()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v12

    add-int v9, v11, v12

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v12, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v12

    sub-int v0, v11, v12

    sub-int v10, v3, v9

    add-int/lit8 v11, p1, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v11, p1

    add-int/lit8 v6, v11, -0x1

    if-lez v10, :cond_2

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-lt v6, v11, :cond_4

    if-le v4, v0, :cond_2

    :cond_4
    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ne v6, v11, :cond_5

    sub-int v11, v4, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_5
    neg-int v11, v10

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_2

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v12

    iget v13, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v3}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v1

    goto :goto_0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_0

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    iget-boolean v2, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 11

    const/4 v3, 0x1

    sub-int v6, p2, p1

    sub-int v10, p2, p1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-gt v9, v10, :cond_0

    sub-int v0, v10, v9

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_0
    invoke-direct {p0, v7, v1}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    :goto_1
    return-object v7

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-gt v8, v6, :cond_0

    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9, v3}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v12, :cond_1

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v2, v10

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v2, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    :goto_1
    return-object v13

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v10, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v14, v10, v2

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v15, v12, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v2, v16

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v2, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    neg-int v2, v11

    invoke-virtual {v13, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v16

    if-ge v2, v0, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v14, v16, v2

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v15, v8, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

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

    invoke-virtual {p0, v0, p1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12

    const/4 v3, 0x1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v10, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    :cond_0
    :goto_1
    if-eqz v5, :cond_5

    :goto_2
    return-object v11

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v0, :cond_4

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    move-object v11, v6

    goto :goto_2

    :cond_6
    move-object v11, v7

    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
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

.method private getLeftSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
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
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v3

    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

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

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 16

    const/4 v14, -0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_0

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "newSelectedPosition needs to be valid"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, p3, v14

    const/16 v14, 0x11

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    move v5, v6

    move v9, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v8, p1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    if-eqz v4, :cond_1

    if-nez p4, :cond_4

    if-eqz v3, :cond_4

    const/4 v14, 0x1

    :goto_1
    invoke-virtual {v4, v14}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_1
    if-eqz v8, :cond_2

    if-nez p4, :cond_5

    if-nez v3, :cond_5

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v8, v14}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v5, v10

    move v9, v6

    move-object/from16 v4, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v10, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v6, p3, v14

    const/16 v14, 0x21

    move/from16 v0, p2

    if-ne v0, v14, :cond_8

    move v13, v6

    move v2, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v1, p1

    const/4 v11, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    if-eqz v12, :cond_7

    if-nez p4, :cond_9

    if-eqz v11, :cond_9

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_7
    if-eqz v1, :cond_2

    if-nez p4, :cond_a

    if-nez v11, :cond_a

    const/4 v14, 0x1

    :goto_6
    invoke-virtual {v1, v14}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->measureAndAdjustDown(Landroid/view/View;II)V

    goto :goto_3

    :cond_8
    move v13, v10

    move v2, v6

    move-object/from16 v12, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    goto :goto_6
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
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v3

    iget-boolean v5, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getSelectedView()Landroid/view/View;

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

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/htc/widget/HtcListViewCore2;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v5, v5, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

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

    invoke-direct {p0, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

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
    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

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
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v4, v5

    :goto_2
    if-gt v4, v3, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

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
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    :cond_8
    if-le v5, v2, :cond_9

    move v5, v2

    :cond_9
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move v4, v5

    :goto_4
    if-lt v4, v1, :cond_b

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

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

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcListViewCore2;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    goto :goto_0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->measureItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->relayoutMeasuredItem(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 10

    const/high16 v9, 0x4000

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_1

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_3
    iget v5, p0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_4

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 9

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    if-nez v4, :cond_0

    new-instance v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iput v5, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_1

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    :goto_1
    return-void

    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_3

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_3
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getLeftSelectionPixel(III)I

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getRightSelectionPixel(III)I

    move-result v19

    if-lez p3, :cond_2

    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v7, v3, v11

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    move/from16 v0, v19

    if-le v3, v0, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v3, v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v3, v19

    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    :goto_0
    return-object v20

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto :goto_0

    :cond_2
    if-gez p3, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v14, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v22, v14, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v23, v19, v3

    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getRight()I

    move-result v16

    add-int/lit8 v3, p4, 0x14

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getTopSelectionPixel(III)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/htc/widget/HtcListViewCore2;->getBottomSelectionPixel(III)I

    move-result v9

    if-lez p3, :cond_a

    add-int/lit8 v4, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v5, v3, v10

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v9, :cond_8

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v3, v24

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v3, v9

    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    move/from16 v0, v17

    neg-int v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    goto/16 :goto_0

    :cond_a
    if-gez p3, :cond_d

    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    :goto_2
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    move/from16 v0, v24

    if-ge v3, v0, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v22, v24, v3

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v23, v9, v3

    sub-int v3, p5, p4

    div-int/lit8 v13, v3, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    goto :goto_2

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v21

    invoke-direct/range {v3 .. v8}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v20

    move/from16 v0, p4

    if-ge v5, v0, :cond_e

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/lit8 v3, p4, 0x14

    if-ge v15, v3, :cond_e

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore2;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

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

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

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
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
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

    check-cast v1, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v3, v1, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 14

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v7, v11, v12

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v9

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_0

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_0

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v7, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    :cond_1
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    if-ge v11, v6, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_4

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v11, :cond_4

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore2;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v6, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenLeftAndRight(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v11

    if-le v11, v7, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v11

    iget-object v12, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v11, v12

    iget-object v11, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    if-gez p1, :cond_b

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v9

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_8

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v11, v9

    add-int/lit8 v3, v11, -0x1

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_8

    invoke-direct {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v5, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    :cond_9
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v11, v8, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :goto_8
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_8

    :cond_b
    invoke-virtual {p0, v13}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-lez v11, :cond_c

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v11}, Lcom/htc/widget/HtcListViewCore2;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iget v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v8, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v8, v11

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcListViewCore2;->offsetChildrenTopAndBottom(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    if-le v11, v5, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    iget v11, v4, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :goto_b
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    :cond_e
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_b

    :cond_f
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 20

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->shouldShowSelector()Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v10, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v17

    move/from16 v0, v17

    if-eq v10, v0, :cond_8

    const/4 v15, 0x1

    :goto_2
    if-eqz p7, :cond_2

    if-nez v15, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_2
    const/4 v13, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    if-nez v14, :cond_3

    new-instance v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lcom/htc/widget/HtcAbsListView2$LayoutParams;-><init>(III)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    if-nez p7, :cond_4

    iget-boolean v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    :cond_4
    if-eqz p4, :cond_a

    const/16 v17, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/htc/widget/HtcListViewCore2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    if-eqz v15, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p1

    check-cast v17, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_6
    if-eqz v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    iget v12, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v12, :cond_e

    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v17

    if-eqz v17, :cond_14

    if-eqz p4, :cond_12

    move/from16 v7, p3

    :goto_8
    if-eqz v13, :cond_13

    add-int v4, p5, v9

    add-int v6, v7, v16

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v7, v1, v6, v4}, Landroid/view/View;->layout(IIII)V

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mCachingStarted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_b
    iget v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->viewType:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/htc/widget/HtcAbsListView2$LayoutParams;->recycledHeaderFooter:Z

    :cond_c
    if-eqz p4, :cond_d

    const/16 v17, -0x1

    :goto_a
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/htc/widget/HtcListViewCore2;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_d
    const/16 v17, 0x0

    goto :goto_a

    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget v11, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v11, :cond_10

    const/high16 v17, 0x4000

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_b

    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_12
    sub-int v7, p3, v16

    goto/16 :goto_8

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9

    :cond_14
    if-eqz p4, :cond_15

    move/from16 v7, p3

    :goto_c
    if-eqz v13, :cond_16

    add-int v6, p5, v16

    add-int v4, v7, v9

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_9

    :cond_15
    sub-int v7, p3, v9

    goto :goto_c

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, p5, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v7, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_9
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

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

.method private showingLeftFadingEdge()Z
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

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

    iget v2, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

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

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    new-instance v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/HtcListViewCore2;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;-><init>(Lcom/htc/widget/HtcListViewCore2;)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mThisContext:Landroid/content/Context;

    const-string v2, "list_item_4roundx"

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method arrowScroll(I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->playSoundEffect(I)V
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

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->canAnimate()Z

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

.method public clearChoices()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    return-void
.end method

.method public disableFakeSelector()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    if-lez v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingBottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v18, v22, v23

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v6, :cond_f

    if-nez v13, :cond_0

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_2

    :cond_0
    if-nez v10, :cond_1

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_2

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    add-int v22, v20, v8

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v14}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v6, :cond_f

    if-nez v13, :cond_4

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_6

    :cond_4
    if-nez v10, :cond_5

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_6

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v15

    move/from16 v0, v17

    if-le v15, v0, :cond_6

    sub-int v22, v15, v8

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iput v15, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_6

    add-int/lit8 v22, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    if-lez v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView2;->mPaddingRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v11, v22, -0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v16, v22, v23

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_f

    if-nez v13, :cond_8

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_a

    :cond_8
    if-nez v10, :cond_9

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_a

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    move/from16 v0, v16

    if-ge v3, v0, :cond_a

    iput v3, v4, Landroid/graphics/Rect;->top:I

    add-int v22, v3, v7

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v14}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v6, :cond_f

    if-nez v13, :cond_c

    add-int v22, v9, v14

    move/from16 v0, v22

    if-lt v0, v12, :cond_e

    :cond_c
    if-nez v10, :cond_d

    add-int v22, v9, v14

    move/from16 v0, v22

    if-ge v0, v11, :cond_e

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    sub-int v22, v21, v7

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v0, v21

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewWithoutDivider:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v0, v5, :cond_e

    add-int/lit8 v22, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lcom/htc/widget/HtcListViewCore2;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_f
    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    if-nez v0, :cond_1

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, p3

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->shouldDrawSeperatorDivider(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected fillDown(II)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    :goto_0
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    return-object v8

    :cond_1
    move v5, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int p2, v0, v1

    if-eqz v5, :cond_3

    move-object v8, v6

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    :goto_2
    if-ge p2, v7, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_6

    move v5, v3

    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int p2, v0, v1

    if-eqz v5, :cond_5

    move-object v8, v6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    move v5, v9

    goto :goto_3
.end method

.method fillGap(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    add-int v1, v2, v3

    :goto_0
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingLeft()I

    move-result v1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int v1, v2, v3

    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    if-lez v0, :cond_4

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    add-int v1, v2, v3

    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooHigh(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingTop()I

    move-result v1

    goto :goto_3

    :cond_5
    if-lez v0, :cond_6

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int v1, v2, v3

    :goto_4
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->correctTooLow(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_4
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    if-le p2, v7, :cond_5

    if-ltz p1, :cond_5

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v9

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_0

    move-object v8, v6

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    :goto_2
    if-le p2, v7, :cond_5

    if-ltz p1, :cond_5

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_4

    move v5, v9

    :goto_3
    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcListViewCore2;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    sub-int p2, v0, v1

    if-eqz v5, :cond_3

    move-object v8, v6

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    return-object v8
.end method

.method findMotionColumn(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

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
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

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
    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
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
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
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

    check-cast v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

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

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;",
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

    check-cast v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;

    iget-object v2, v3, Lcom/htc/widget/HtcListViewCore2$FixedViewInfo;->view:Landroid/view/View;

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

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/htc/widget/HtcListViewCore2;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

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

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x11

    if-ne p1, v2, :cond_3

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    :cond_2
    return v0

    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_4

    const/16 v2, 0x8

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v2, 0x21

    if-ne p1, v2, :cond_7

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_6

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    return v0
.end method

.method public getListBottom()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mListSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScrollAmount()I
    .locals 4

    const v3, 0x3ea8f5c3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getRoundedCornerGetView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    return v0
.end method

.method public isEndRound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDrawEndRound:Z

    return v0
.end method

.method public isFakeSelectorOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mFakeSelectorOn:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransparentWrap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    return v0
.end method

.method public isUseDivider()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    return v0
.end method

.method public isWrappingHeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v14, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/htc/widget/HtcAbsListView2;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v8

    add-int v12, v2, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v8

    sub-int v13, v2, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v8

    add-int v6, v2, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v2, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getRightBorderWidth()I

    move-result v8

    sub-int v7, v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v15

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v25, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v24, v2, v8

    if-ltz v24, :cond_2

    move/from16 v0, v24

    if-ge v0, v15, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    sub-int v5, v2, v8

    :cond_3
    add-int v2, v24, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_4
    :goto_1
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->handleDataChanged()V

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v14, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_2
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int v24, v2, v8

    if-ltz v24, :cond_4

    move/from16 v0, v24

    if-ge v0, v15, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    move-object/from16 v27, v0

    const/16 v18, 0x0

    if-eqz v16, :cond_7

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v0, v15, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->fillActiveViews(II)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_b

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    move-object/from16 v18, v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->findFocus()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->requestFocus()Z

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->detachAllViewsFromParent()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    packed-switch v2, :pswitch_data_1

    if-nez v15, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->scrapActiveViews()V

    if-eqz v28, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_d
    const/16 v20, 0x1

    :goto_4
    if-nez v20, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getFocusedChild()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->clearFocus()V

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    :cond_f
    :goto_6
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->onFinishTemporaryDetach()V

    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->updateScrollIndicators()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v14, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/htc/widget/HtcListViewCore2;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/htc/widget/HtcListViewCore2;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/htc/widget/HtcListViewCore2;->fillFromSelection(III)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/widget/HtcListViewCore2;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    if-nez v14, :cond_15

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    :cond_15
    throw v2

    :pswitch_6
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    :pswitch_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->adjustViewsUpOrDown()V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_17
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    invoke-direct/range {v8 .. v13}, Lcom/htc/widget/HtcListViewCore2;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    const/4 v8, 0x1

    if-le v2, v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/widget/HtcListViewCore2;->fillFromTop(I)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/htc/widget/HtcListViewCore2;->fillUp(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v2, v8, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_1d

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_1d
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-nez v3, :cond_1f

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_1f
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_8

    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-ge v2, v8, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v25, :cond_21

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_21
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v6

    goto :goto_9

    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v25, :cond_23

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_23
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_a

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/htc/widget/HtcListViewCore2;->fillSpecific(II)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_3

    :cond_26
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_27
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_29
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iget-boolean v3, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

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
    .locals 10

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v4, v8, v9

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, v9

    iget v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    :goto_1
    const/4 v4, 0x0

    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v6

    move v3, p2

    :goto_2
    if-gt v3, p3, :cond_9

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    if-lez v3, :cond_3

    add-int/2addr v7, v2

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v7, p4, :cond_7

    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    move v4, v7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    move v4, v7

    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 10

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v4, v8, v9

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v8, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v7, v8, v9

    iget v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    iget v2, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    :goto_1
    const/4 v4, 0x0

    const/4 v8, -0x1

    if-ne p3, v8, :cond_2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v6

    move v3, p2

    :goto_2
    if-gt v3, p3, :cond_9

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3, p1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    if-lez v3, :cond_3

    add-int/2addr v7, v2

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v7, p4, :cond_7

    if-ltz p5, :cond_5

    if-le v3, p5, :cond_5

    if-lez v4, :cond_5

    if-ne v7, p4, :cond_0

    :cond_5
    move v4, p4

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    if-ltz p5, :cond_8

    if-lt v3, p5, :cond_8

    move v4, v7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    move v4, v7

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->addHeaderView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->removeAllViews()V

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsListView2;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v9, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollX:I

    iget v10, p0, Lcom/htc/widget/HtcAbsListView2;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v8, p0, Lcom/htc/widget/HtcListViewCore2;->mTempRect:Landroid/graphics/Rect;

    const v6, 0x7fffffff

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget/HtcListViewCore2;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v8, p2}, Lcom/htc/widget/HtcListViewCore2;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    if-ge v3, v6, :cond_0

    move v6, v3

    move v2, v5

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_3

    iget v9, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcListViewCore2;->setSelection(I)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/widget/HtcListViewCore2;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18

    invoke-super/range {p0 .. p2}, Lcom/htc/widget/HtcAbsListView2;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v2, :cond_1

    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListViewCore2;->obtainView(I)Landroid/view/View;

    move-result-object v13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1}, Lcom/htc/widget/HtcListViewCore2;->measureScrapChild(Landroid/view/View;II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->recycleOnMeasure()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_1
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalScrollbarWidth()I

    move-result v3

    add-int v11, v2, v3

    :cond_2
    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    :cond_3
    const/high16 v2, -0x8000

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/widget/HtcListViewCore2;->measureHeightOfChildren(IIIII)I

    move-result v6

    :cond_4
    const/high16 v2, -0x8000

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object/from16 v7, p0

    move/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/htc/widget/HtcListViewCore2;->measureWidthOfChildren(IIIII)I

    move-result v11

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Lcom/htc/widget/HtcListViewCore2;->setMeasuredDimension(II)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mWidthMeasureSpec:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mHeightMeasureSpec:I

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    goto/16 :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcListViewCore2$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListViewCore2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAbsListView2;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/htc/widget/HtcListViewCore2$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/widget/HtcListViewCore2$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/htc/widget/HtcListViewCore2$SavedState;

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0, v2}, Lcom/htc/widget/HtcListViewCore2$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

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
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    if-ne p1, v5, :cond_3

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {p0, v1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v2

    if-ltz v2, :cond_6

    const/4 v4, 0x4

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_1

    const/16 v4, 0x8

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v4, 0x7

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListViewCore2;->setSelectionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    :goto_2
    return v3

    :cond_3
    const/16 v5, 0x82

    if-ne p1, v5, :cond_0

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/htc/widget/HtcAbsListView2;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    if-eqz v0, :cond_5

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_5

    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    :cond_5
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iput v3, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    iget v4, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAbsListView2;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    return v0

    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore2;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->onChanged()V

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lcom/htc/widget/HtcListViewCore2;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 26

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v25

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getScrollX()I

    move-result v13

    add-int v14, v13, v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHorizontalFadingEdgeLength()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingLeftFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_0

    move/from16 v0, v16

    if-le v0, v9, :cond_1

    :cond_0
    add-int/2addr v13, v9

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getRight()I

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingRightFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v25, v18, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    :cond_2
    sub-int v18, v18, v9

    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v14, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v13, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v24, v13

    add-int v20, v20, v24

    :goto_0
    sub-int v8, v18, v14

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    :cond_4
    :goto_1
    if-eqz v20, :cond_9

    const/16 v19, 0x1

    :goto_2
    if-eqz v19, :cond_5

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mSelectedLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    :cond_5
    :goto_3
    return v19

    :cond_6
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v24, v14

    add-int v20, v20, v24

    goto :goto_0

    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v14, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v24, v14, v24

    sub-int v20, v20, v24

    :goto_4
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v5, v11, v13

    move/from16 v0, v20

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto :goto_1

    :cond_8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    sub-int v20, v20, v24

    goto :goto_4

    :cond_9
    const/16 v19, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getScrollY()I

    move-result v15

    add-int v12, v15, v10

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getVerticalFadingEdgeLength()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingTopFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    if-gtz v24, :cond_b

    move/from16 v0, v17

    if-le v0, v9, :cond_c

    :cond_b
    add-int/2addr v15, v9

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v4

    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->showingBottomFadingEdge()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v25, v3, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    :cond_d
    sub-int/2addr v12, v9

    :cond_e
    const/16 v21, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v12, :cond_11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v15, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    add-int v21, v21, v24

    :goto_5
    sub-int v7, v3, v12

    move/from16 v0, v21

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    :cond_f
    :goto_6
    if-eqz v21, :cond_13

    const/16 v19, 0x1

    :goto_7
    if-eqz v19, :cond_5

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->scrollListItemsBy(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/htc/widget/HtcListViewCore2;->positionSelector(Landroid/view/View;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/HtcAbsListView2;->mSelectedTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    add-int v21, v21, v24

    goto :goto_5

    :cond_11
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v15, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_12

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v12, v24

    sub-int v21, v21, v24

    :goto_8
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v6, v22, v15

    move/from16 v0, v21

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_6

    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v15, v24

    sub-int v21, v21, v24

    goto :goto_8

    :cond_13
    const/16 v19, 0x0

    goto :goto_7
.end method

.method resetList()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcAbsListView2;->resetList()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->resetList()V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->clear()V

    if-nez p1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkFocus()V

    new-instance v1, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mDataSetObserver:Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mRecycler:Lcom/htc/widget/HtcAbsListView2$RecycleBin;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView2$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Lcom/htc/widget/HtcAbsListView2;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lcom/htc/widget/HtcListViewCore2;->mAreAllItemsSelectable:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setBottomFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mBottomFirst:Z

    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1

    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    iget v0, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    :goto_0
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    return-void

    :cond_1
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    iput-boolean v1, p0, Lcom/htc/widget/HtcListViewCore2;->mClipDivider:Z

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcListViewCore2;->mDividerWidth:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayoutIfNecessary()V

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mFooterDividersEnabled:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderDividersEnabled:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->invalidate()V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcListViewCore2;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->rememberSyncState()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1
.end method

.method public setItemsCanFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setRoundedCornerGetView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mRoundedCornerGetView:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromLeft(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcListViewCore2;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListViewCore2;->setSelection(I)V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromLeft(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getLeftBorderWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    goto :goto_1
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcListViewCore2;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2;->mLayoutMode:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->getTopBorderHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->requestLayout()V

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/htc/widget/HtcAbsListView2;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcListViewCore2;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcListViewCore2;->layoutChildren()V

    return-void
.end method

.method public setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore2;->mSeperatorDiver:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTransparentWrap(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    iget-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mTransparentWrap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    :cond_0
    return-void
.end method

.method public setUseDivider(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcListViewCore2;->mUseDivider:Z

    return-void
.end method

.method public setWrappingHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/HtcListViewCore2;->mWrappingHeader:Z

    return-void
.end method

.method protected shouldDrawSeperatorDivider(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method updateBackGround()V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getChildCount()I

    move-result v5

    const/16 v19, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v0, v12, Lcom/htc/widget/HtcListItemSeparableType;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcListViewCore2;->mSpeedUp:Z

    :cond_0
    return-void

    :cond_1
    instance-of v0, v12, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v19, 0x1

    :cond_2
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getListPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcListViewCore2;->getBottomBorderHeight()I

    move-result v21

    add-int v11, v20, v21

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v5, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    const v20, 0x2020019

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v20, 0x2020018

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v18, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    const v20, 0x2020085

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_3

    const v20, 0x20200f0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_3

    const v20, 0x20200f8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v0, v12, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object v13, v12

    check-cast v13, Lcom/htc/widget/HtcListItemSeparable;

    if-nez v10, :cond_9

    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v18

    :cond_6
    :goto_3
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_c

    if-lt v2, v11, :cond_7

    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v3

    :cond_7
    :goto_4
    if-eqz v18, :cond_f

    if-eqz v3, :cond_f

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const v20, 0x2080693

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_9
    if-lez v10, :cond_6

    add-int/lit8 v20, v10, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v17, v16

    check-cast v17, Lcom/htc/widget/HtcListItemSeparable;

    :cond_a
    if-nez v16, :cond_b

    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v18

    goto :goto_3

    :cond_b
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v18

    goto :goto_3

    :cond_c
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListViewCore2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    instance-of v0, v14, Lcom/htc/widget/HtcListItemSeparable;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object v15, v14

    check-cast v15, Lcom/htc/widget/HtcListItemSeparable;

    :cond_d
    if-nez v14, :cond_e

    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v3

    goto :goto_4

    :cond_e
    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    invoke-interface {v13, v14}, Lcom/htc/widget/HtcListItemSeparable;->shouldSeparate(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v13}, Lcom/htc/widget/HtcListItemSeparable;->shouldDrawOnThis()Z

    move-result v3

    goto/16 :goto_4

    :cond_f
    if-eqz v18, :cond_11

    if-eqz v9, :cond_10

    if-eqz v8, :cond_10

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    const v20, 0x2080696

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_11
    if-eqz v3, :cond_13

    if-eqz v9, :cond_12

    if-eqz v8, :cond_12

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    const v20, 0x2080694

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_13
    if-eqz v9, :cond_14

    if-eqz v8, :cond_14

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    const v20, 0x2080695

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method
