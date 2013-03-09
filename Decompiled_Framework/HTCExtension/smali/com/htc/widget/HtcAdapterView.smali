.class public abstract Lcom/htc/widget/HtcAdapterView;
.super Landroid/view/ViewGroup;
.source "HtcAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcAdapterView$1;,
        Lcom/htc/widget/HtcAdapterView$SelectionNotifier;,
        Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;,
        Lcom/htc/widget/HtcAdapterView$OnDataSetListener;,
        Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;,
        Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;,
        Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;,
        Lcom/htc/widget/HtcAdapterView$OnItemClickListener;,
        Lcom/htc/widget/HtcAdapterView$ListStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_COLUMN_ID:J = -0x8000000000000000L

.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field mNeedSync:Z

.field mNextSelectedColumnId:J

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedColumnId:J

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field mSelectedColumnId:J

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/widget/HtcAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificLeft:I

.field mSpecificTop:I

.field private mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

.field mSyncColumnId:J

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J

.field mSyncWidth:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcAdapterView;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAdapterView;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .locals 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

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

.method checkFocus()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v3, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAdapterView;->updateEmptyStatus(Z)V

    :cond_4
    return-void

    :cond_5
    move v1, v5

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->selectionChanged()V

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->selectionChanged()V

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method findSyncPosition()I
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-nez v2, :cond_1

    const/4 v14, -0x1

    :cond_0
    :goto_0
    return v14

    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-eqz v15, :cond_2

    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_3

    :cond_2
    const/4 v14, -0x1

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    move v5, v14

    move v10, v14

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v14, -0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    if-eqz v11, :cond_a

    if-nez v7, :cond_a

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move v14, v10

    const/4 v11, 0x0

    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_7

    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_8

    const/4 v7, 0x1

    :goto_2
    if-nez v5, :cond_9

    const/4 v6, 0x1

    :goto_3
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    :cond_7
    const/4 v14, -0x1

    goto :goto_0

    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    if-nez v7, :cond_b

    if-nez v11, :cond_6

    if-nez v6, :cond_6

    :cond_b
    add-int/lit8 v5, v5, -0x1

    move v14, v5

    const/4 v11, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4

    const-wide/high16 v1, -0x8000

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-gez p1, :cond_4

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_1
.end method

.method public getLastVisiblePosition()I
    .locals 2

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getListStyle()Lcom/htc/widget/HtcAdapterView$ListStyle;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7

    const/4 v5, -0x1

    move-object v3, p1

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_1
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-wide/high16 v5, -0x8000

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->findSyncPosition()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2, v9}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->setNextSelectedPositionInt(I)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v2

    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0, v2, v9}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    if-gez v3, :cond_3

    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    :cond_3
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAdapterView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->checkSelectionChanged()V

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->checkSelectionChanged()V

    :cond_5
    return-void
.end method

.method public isHorizontalStyle()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    sget-object v1, Lcom/htc/widget/HtcAdapterView$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutHeight:I

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->playSoundEffect(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    move v0, v6

    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutWidth:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncWidth:J

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    :cond_0
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    :cond_3
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    :cond_4
    iput-wide v6, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_7

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    :cond_6
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_9

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    :cond_8
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    :cond_9
    iput-wide v6, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_2
.end method

.method public removeAllViews()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;-><init>(Lcom/htc/widget/HtcAdapterView;Lcom/htc/widget/HtcAdapterView$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->sendAccessibilityEvent(I)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAdapterView;->updateEmptyStatus(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    goto :goto_0
.end method

.method public abstract setSelection(I)V
.end method
