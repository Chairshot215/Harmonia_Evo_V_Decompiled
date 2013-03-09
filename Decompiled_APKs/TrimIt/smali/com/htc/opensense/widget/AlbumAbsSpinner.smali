.class public abstract Lcom/htc/opensense/widget/AlbumAbsSpinner;
.super Lcom/htc/opensense/widget/AlbumAdapterView;
.source "AlbumAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/AlbumAbsSpinner$1;,
        Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/widget/AlbumAdapterView",
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

    .line 63
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;)V

    .line 47
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    .line 48
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    .line 49
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    .line 50
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->initAbsSpinner()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/widget/AlbumAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    .line 48
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    .line 49
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    .line 50
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    .line 51
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 52
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 73
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->initAbsSpinner()V

    .line 75
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 79
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 81
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setFocusable(Z)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setWillNotDraw(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 331
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleDataChanged()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->handleDataChanged()V

    .line 286
    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 182
    .local v6, widthMode:I
    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_4

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 184
    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_5

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 186
    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 188
    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 191
    iget-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->handleDataChanged()V

    .line 195
    :cond_0
    const/4 v2, 0x0

    .line 196
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 197
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 199
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 200
    .local v4, selectedPosition:I
    if-ltz v4, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 213
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 215
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_1

    .line 217
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 218
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 221
    :cond_1
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 223
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 224
    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 226
    const/4 v1, 0x0

    .line 230
    .end local v5           #view:Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_3

    .line 232
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 233
    if-nez v6, :cond_3

    .line 234
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 239
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 241
    invoke-static {v2, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->resolveSize(II)I

    move-result v0

    .line 242
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->resolveSize(II)I

    move-result v7

    .line 244
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setMeasuredDimension(II)V

    .line 245
    iput p2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mHeightMeasureSpec:I

    .line 246
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mWidthMeasureSpec:I

    .line 247
    return-void

    .line 182
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_4
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 184
    :cond_5
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 186
    :cond_6
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 188
    :cond_7
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 452
    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;

    .line 454
    .local v0, ss:Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 456
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 457
    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mDataChanged:Z

    .line 458
    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mNeedSync:Z

    .line 459
    iget-wide v1, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSyncRowId:J

    .line 460
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSyncPosition:I

    .line 461
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSyncMode:I

    .line 462
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->requestLayout()V

    .line 464
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 439
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 440
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 441
    .local v0, ss:Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    .line 442
    iget-wide v2, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->position:I

    .line 447
    :goto_0
    return-object v0

    .line 445
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/opensense/widget/AlbumAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 371
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 372
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 373
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 374
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getChildCount()I

    move-result v1

    .line 378
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 379
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 381
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 382
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 387
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 378
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 387
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 346
    invoke-super {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    .line 348
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 156
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mDataChanged:Z

    .line 157
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mNeedSync:Z

    .line 159
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->removeAllViewsInLayout()V

    .line 160
    iput v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mOldSelectedPosition:I

    .line 161
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mOldSelectedRowId:J

    .line 163
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    .line 164
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->invalidate()V

    .line 166
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 114
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->resetList()V

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 121
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mOldSelectedPosition:I

    .line 122
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mOldSelectedRowId:J

    .line 124
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 125
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mOldItemCount:I

    .line 126
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mItemCount:I

    .line 127
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->checkFocus()V

    .line 129
    new-instance v1, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/opensense/widget/AlbumAdapterView;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 130
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 132
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 134
    .local v0, position:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setSelectedPositionInt(I)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 137
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->checkSelectionChanged()V

    .line 149
    .end local v0           #position:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->requestLayout()V

    .line 150
    return-void

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->checkFocus()V

    .line 144
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->resetList()V

    .line 146
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 304
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->requestLayout()V

    .line 305
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->invalidate()V

    .line 306
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 295
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 297
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setSelectionInt(IZ)V

    .line 298
    return-void

    .line 295
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
    .line 317
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 319
    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 320
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 321
    invoke-virtual {p0, v0, p2}, Lcom/htc/opensense/widget/AlbumAbsSpinner;->layout(IZ)V

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/widget/AlbumAbsSpinner;->mBlockLayoutRequests:Z

    .line 324
    .end local v0           #delta:I
    :cond_0
    return-void
.end method
