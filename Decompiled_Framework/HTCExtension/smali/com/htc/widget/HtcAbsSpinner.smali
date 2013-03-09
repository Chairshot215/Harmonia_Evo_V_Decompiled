.class public abstract Lcom/htc/widget/HtcAbsSpinner;
.super Lcom/htc/widget/HtcAdapterView;
.source "HtcAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAbsSpinner$1;,
        Lcom/htc/widget/HtcAbsSpinner$RecycleBin;,
        Lcom/htc/widget/HtcAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/HtcAdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

.field mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    iput v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedView:Landroid/view/View;

    new-instance v0, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    iput v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectedView:Landroid/view/View;

    new-instance v3, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/HtcAbsSpinner;)V

    iput-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-direct {p0}, Lcom/htc/widget/HtcAbsSpinner;->initAbsSpinner()V

    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAbsSpinner;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/HtcAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleDataChanged()V
    .locals 0

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->handleDataChanged()V

    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->handleDataChanged()V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/widget/HtcAbsSpinner;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, p2}, Lcom/htc/widget/HtcAbsSpinner;->resolveSize(II)I

    move-result v0

    invoke-static {v3, p1}, Lcom/htc/widget/HtcAbsSpinner;->resolveSize(II)I

    move-result v7

    invoke-virtual {p0, v7, v0}, Lcom/htc/widget/HtcAbsSpinner;->setMeasuredDimension(II)V

    iput p2, p0, Lcom/htc/widget/HtcAbsSpinner;->mHeightMeasureSpec:I

    iput p1, p0, Lcom/htc/widget/HtcAbsSpinner;->mWidthMeasureSpec:I

    return-void

    :cond_6
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    :cond_7
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    :cond_8
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    :cond_9
    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget-wide v1, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iget v1, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    iget-wide v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->position:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/widget/HtcAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/HtcAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getChildCount()I

    move-result v0

    iget-object v3, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v2, v5, v1

    invoke-virtual {v3, v2, v4}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->resetList()V

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkFocus()V

    new-instance v1, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/HtcAdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkSelectionChanged()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->requestLayout()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->resetList()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/HtcAbsSpinner;->setSelectionInt(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, v0, p2}, Lcom/htc/widget/HtcAbsSpinner;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mBlockLayoutRequests:Z

    :cond_0
    return-void
.end method
