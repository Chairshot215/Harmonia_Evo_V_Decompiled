.class public abstract Lcom/htc/home/personalize/widget/AlbumAbsSpinner;
.super Lcom/htc/home/personalize/widget/AlbumAdapterView;
.source "AlbumAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widget/AlbumAbsSpinner$1;,
        Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/home/personalize/widget/AlbumAdapterView",
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
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAdapterView;-><init>(Landroid/content/Context;)V

    .line 48
    iput v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->initAbsSpinner()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/widget/AlbumAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    .line 49
    iput v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    .line 50
    iput v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    .line 51
    iput v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    .line 52
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 53
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 74
    invoke-direct {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->initAbsSpinner()V

    .line 76
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 80
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 82
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 86
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setFocusable(Z)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setWillNotDraw(Z)V

    .line 99
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 104
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 264
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 332
    iget v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 334
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleDataChanged()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->handleDataChanged()V

    .line 287
    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 183
    .local v6, widthMode:I
    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_4

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 185
    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_5

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 187
    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 192
    iget-boolean v8, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->handleDataChanged()V

    .line 196
    :cond_0
    const/4 v2, 0x0

    .line 197
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 198
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 200
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 201
    .local v4, selectedPosition:I
    if-ltz v4, :cond_2

    iget-object v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 214
    iget-object v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 216
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 217
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_1

    .line 218
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 219
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 222
    :cond_1
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 224
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 225
    invoke-virtual {p0, v5}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 227
    const/4 v1, 0x0

    .line 231
    .end local v5           #view:Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_3

    .line 233
    iget-object v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 234
    if-nez v6, :cond_3

    .line 235
    iget-object v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 240
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 242
    invoke-static {v2, p2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->resolveSize(II)I

    move-result v0

    .line 243
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->resolveSize(II)I

    move-result v7

    .line 245
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setMeasuredDimension(II)V

    .line 246
    iput p2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mHeightMeasureSpec:I

    .line 247
    iput p1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mWidthMeasureSpec:I

    .line 248
    return-void

    .line 183
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_4
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 185
    :cond_5
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 187
    :cond_6
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 189
    :cond_7
    iget v8, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 453
    move-object v0, p1

    check-cast v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;

    .line 455
    .local v0, ss:Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 457
    iget-wide v1, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 458
    iput-boolean v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    .line 459
    iput-boolean v5, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNeedSync:Z

    .line 460
    iget-wide v1, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSyncRowId:J

    .line 461
    iget v1, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSyncPosition:I

    .line 462
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSyncMode:I

    .line 463
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->requestLayout()V

    .line 465
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 440
    invoke-super {p0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 441
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 442
    .local v0, ss:Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    .line 443
    iget-wide v2, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->position:I

    .line 448
    :goto_0
    return-object v0

    .line 446
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 372
    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 373
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 374
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 375
    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getChildCount()I

    move-result v1

    .line 379
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 380
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 382
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 383
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 384
    iget v4, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 388
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 379
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 388
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 347
    invoke-super {p0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->requestLayout()V

    .line 349
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 157
    iput-boolean v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    .line 158
    iput-boolean v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNeedSync:Z

    .line 160
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->removeAllViewsInLayout()V

    .line 161
    iput v2, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 162
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 164
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 166
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->invalidate()V

    .line 167
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 115
    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->resetList()V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 122
    iput v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 123
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 125
    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 126
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldItemCount:I

    .line 127
    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    .line 128
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->checkFocus()V

    .line 130
    new-instance v1, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/home/personalize/widget/AlbumAdapterView;)V

    iput-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 131
    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 135
    .local v0, position:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 138
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->checkSelectionChanged()V

    .line 150
    .end local v0           #position:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->requestLayout()V

    .line 151
    return-void

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->checkFocus()V

    .line 145
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->resetList()V

    .line 147
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 305
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->requestLayout()V

    .line 306
    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->invalidate()V

    .line 307
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 296
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 298
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setSelectionInt(IZ)V

    .line 299
    return-void

    .line 296
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 318
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 320
    iget v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 321
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 322
    invoke-virtual {p0, v0, p2}, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->layout(IZ)V

    .line 323
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/home/personalize/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 325
    .end local v0           #delta:I
    :cond_0
    return-void
.end method
