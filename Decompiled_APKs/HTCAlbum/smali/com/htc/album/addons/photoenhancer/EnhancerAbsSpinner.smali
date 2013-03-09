.class public abstract Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;
.super Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;
.source "EnhancerAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$1;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView",
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

.field mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

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

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;-><init>(Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    .line 66
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->initAbsSpinner()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionLeftPadding:I

    .line 50
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionTopPadding:I

    .line 51
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionRightPadding:I

    .line 52
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionBottomPadding:I

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 54
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectedView:Landroid/view/View;

    .line 57
    new-instance v3, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;-><init>(Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;)V

    iput-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    .line 75
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->initAbsSpinner()V

    .line 77
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 82
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setFocusable(Z)V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setWillNotDraw(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 253
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 321
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleDataChanged()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->handleDataChanged()V

    .line 276
    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 173
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 177
    .local v6, widthMode:I
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 179
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 181
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 183
    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 186
    iget-boolean v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->handleDataChanged()V

    .line 190
    :cond_0
    const/4 v2, 0x0

    .line 191
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 192
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 194
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 195
    .local v4, selectedPosition:I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    .line 197
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 198
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 200
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 203
    :cond_1
    if-eqz v5, :cond_2

    .line 205
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 208
    :cond_2
    if-eqz v5, :cond_4

    .line 209
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 210
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mBlockLayoutRequests:Z

    .line 211
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mBlockLayoutRequests:Z

    .line 214
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 216
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 217
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 219
    const/4 v1, 0x0

    .line 223
    .end local v5           #view:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 225
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 226
    if-nez v6, :cond_5

    .line 227
    iget-object v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 231
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 232
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 234
    invoke-static {v2, p2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->resolveSize(II)I

    move-result v0

    .line 235
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->resolveSize(II)I

    move-result v7

    .line 237
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setMeasuredDimension(II)V

    .line 238
    iput p2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mHeightMeasureSpec:I

    .line 239
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mWidthMeasureSpec:I

    .line 240
    return-void

    .line 177
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_6
    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 179
    :cond_7
    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 181
    :cond_8
    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 183
    :cond_9
    iget v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 442
    move-object v0, p1

    check-cast v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;

    .line 444
    .local v0, ss:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 446
    iget-wide v1, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 447
    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    .line 448
    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 449
    iget-wide v1, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 450
    iget v1, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncPosition:I

    .line 451
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncMode:I

    .line 452
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->requestLayout()V

    .line 454
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 429
    invoke-super {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 430
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 431
    .local v0, ss:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->selectedId:J

    .line 432
    iget-wide v2, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->position:I

    .line 437
    :goto_0
    return-object v0

    .line 435
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 361
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 362
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 363
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 364
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildCount()I

    move-result v1

    .line 368
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 369
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 371
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 372
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    iget v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 377
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 368
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 377
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildCount()I

    move-result v0

    .line 260
    .local v0, childCount:I
    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mRecycler:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;

    .line 263
    .local v3, recycleBin:Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 264
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 265
    .local v4, v:Landroid/view/View;
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    add-int v2, v5, v1

    .line 266
    .local v2, index:I
    invoke-virtual {v3, v2, v4}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v2           #index:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 336
    invoke-super {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->requestLayout()V

    .line 338
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 151
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    .line 152
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 154
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->removeAllViewsInLayout()V

    .line 155
    iput v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    .line 156
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    .line 158
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setSelectedPositionInt(I)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 160
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->invalidate()V

    .line 161
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 109
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 111
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->resetList()V

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 116
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    .line 117
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    .line 119
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 120
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldItemCount:I

    .line 121
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    .line 122
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->checkFocus()V

    .line 124
    new-instance v1, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V

    iput-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 125
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 129
    .local v0, position:I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setSelectedPositionInt(I)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 132
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    if-nez v1, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->checkSelectionChanged()V

    .line 144
    .end local v0           #position:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->requestLayout()V

    .line 145
    return-void

    .line 138
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->checkFocus()V

    .line 139
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->resetList()V

    .line 141
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 294
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->requestLayout()V

    .line 295
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->invalidate()V

    .line 296
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 285
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 287
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setSelectionInt(IZ)V

    .line 288
    return-void

    .line 285
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
    .line 307
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mBlockLayoutRequests:Z

    .line 309
    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 310
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 311
    invoke-virtual {p0, v0, p2}, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->layout(IZ)V

    .line 312
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAbsSpinner;->mBlockLayoutRequests:Z

    .line 314
    .end local v0           #delta:I
    :cond_0
    return-void
.end method
