.class public Lcom/htc/widget/HtcSpinner;
.super Lcom/htc/widget/HtcAbsSpinner;
.source "HtcSpinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcSpinner$DropDownAdapter;
    }
.end annotation


# instance fields
.field private mPrompt:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "common_pulldown"

    const v2, 0x2080075

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcSpinner;->setBackgroundResource(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v3, v3, v1, v3}, Lcom/htc/widget/HtcSpinner;->setPadding(IIII)V

    return-void
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4

    iget-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSpinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcSpinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Lcom/htc/widget/HtcSpinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/4 v2, 0x0

    add-int v3, v2, v7

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    return v1

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method layout(IZ)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v6, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HtcAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    iget-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->handleDataChanged()V

    :cond_0
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->resetList()V

    :goto_0
    return-void

    :cond_1
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcSpinner;->setSelectedPositionInt(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->recycleAllViews()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->removeAllViewsInLayout()V

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-direct {p0, v5}, Lcom/htc/widget/HtcSpinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v5, p0, Lcom/htc/widget/HtcAbsSpinner;->mRecycler:Lcom/htc/widget/HtcAbsSpinner$RecycleBin;

    invoke-virtual {v5}, Lcom/htc/widget/HtcAbsSpinner$RecycleBin;->clear()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->invalidate()V

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->checkSelectionChanged()V

    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcSpinner;->setNextSelectedPositionInt(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcAbsSpinner;->onLayout(ZIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    invoke-virtual {p0, v1, v1}, Lcom/htc/widget/HtcSpinner;->layout(IZ)V

    iput-boolean v1, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    return-void
.end method

.method public performClick()Z
    .locals 5

    invoke-super {p0}, Lcom/htc/widget/HtcAbsSpinner;->performClick()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v0, Lcom/htc/widget/HtcSpinner$DropDownAdapter;

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/htc/widget/HtcSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v0, v4, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    :cond_1
    return v3
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPromptId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcSpinner;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method
