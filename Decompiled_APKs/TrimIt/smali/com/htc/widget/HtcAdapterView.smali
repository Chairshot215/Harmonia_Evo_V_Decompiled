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
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    .line 293
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 93
    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    .line 104
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 115
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 126
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 191
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 197
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 203
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    .line 209
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 215
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 221
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    .line 260
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    .line 266
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 271
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 290
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    .line 297
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 93
    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    .line 104
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 115
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 126
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 191
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 197
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 203
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    .line 209
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 215
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 221
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    .line 260
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    .line 266
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 271
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 290
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v4, -0x1

    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    .line 301
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    .line 93
    sget-object v0, Lcom/htc/widget/HtcAdapterView$ListStyle;->VERT_STYLE_:Lcom/htc/widget/HtcAdapterView$ListStyle;

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    .line 104
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 115
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 126
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    .line 191
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 197
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 203
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    .line 209
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 215
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 221
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    .line 260
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    .line 266
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 271
    iput-wide v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    .line 290
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 1020
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1024
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1026
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1029
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 1082
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1083
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    .line 1084
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1085
    .local v1, itemCount:I
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

    .line 1088
    .end local v1           #itemCount:I
    :cond_1
    return v2
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 825
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const/4 p1, 0x0

    .line 829
    :cond_0
    if-eqz p1, :cond_3

    .line 830
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 832
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    .line 841
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 842
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    iget v4, p0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView;->onLayout(ZIIII)V

    .line 848
    :cond_1
    :goto_1
    return-void

    .line 835
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 845
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 846
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 541
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 554
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 582
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 567
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1093
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
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

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 807
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 808
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 812
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 813
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 814
    iget-object v3, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 815
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcAdapterView;->updateEmptyStatus(Z)V

    .line 817
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 807
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 808
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 812
    goto :goto_2

    :cond_8
    move v3, v5

    .line 813
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1167
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1169
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->selectionChanged()V

    .line 1170
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1171
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedColumnId:J

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1174
    :cond_2
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1175
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->selectionChanged()V

    .line 1176
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedPosition:I

    .line 1177
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mOldSelectedRowId:J

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1035
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1036
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    const/4 v1, 0x1

    .line 1040
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 897
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 889
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 1192
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1194
    .local v2, count:I
    if-nez v2, :cond_1

    .line 1195
    const/4 v14, -0x1

    .line 1269
    :cond_0
    :goto_0
    return v14

    .line 1198
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1199
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1203
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-eqz v15, :cond_2

    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_3

    .line 1204
    :cond_2
    const/4 v14, -0x1

    goto :goto_0

    .line 1209
    :cond_3
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1210
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1217
    .local v3, endTime:J
    move v5, v14

    .line 1220
    .local v5, first:I
    move v10, v14

    .line 1223
    .local v10, last:I
    const/4 v11, 0x0

    .line 1233
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1234
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_6

    .line 1235
    const/4 v14, -0x1

    goto :goto_0

    .line 1253
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_4
    if-nez v6, :cond_5

    if-eqz v11, :cond_a

    if-nez v7, :cond_a

    .line 1255
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 1256
    move v14, v10

    .line 1258
    const/4 v11, 0x0

    .line 1238
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_7

    .line 1239
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1240
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1245
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_8

    const/4 v7, 0x1

    .line 1246
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_9

    const/4 v6, 0x1

    .line 1248
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    .line 1269
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_7
    const/4 v14, -0x1

    goto :goto_0

    .line 1245
    .restart local v12       #rowId:J
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 1246
    .restart local v7       #hitLast:Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 1259
    .restart local v6       #hitFirst:Z
    :cond_a
    if-nez v7, :cond_b

    if-nez v11, :cond_6

    if-nez v6, :cond_6

    .line 1261
    :cond_b
    add-int/lit8 v5, v5, -0x1

    .line 1262
    move v14, v5

    .line 1264
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

    .prologue
    .line 682
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 766
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 725
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 857
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 858
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
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
    .parameter "position"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const-wide/high16 v1, -0x8000

    .line 862
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 867
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 868
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 872
    .local v1, id:J
    :cond_0
    :goto_0
    return-wide v1

    .line 868
    .end local v1           #id:J
    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 870
    :cond_2
    if-eqz v0, :cond_3

    if-gez p1, :cond_4

    .restart local v1       #id:J
    :cond_3
    :goto_1
    goto :goto_0

    .end local v1           #id:J
    :cond_4
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_1
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 735
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getListStyle()Lcom/htc/widget/HtcAdapterView$ListStyle;
    .locals 1

    .prologue
    .line 320
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    return-object v0
.end method

.method public final getOnItemClickListener()Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 370
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 436
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 482
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 695
    move-object v3, p1

    .line 698
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 699
    move-object v3, v4

    goto :goto_0

    .line 701
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 715
    :cond_0
    :goto_1
    return v5

    .line 707
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v0

    .line 708
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 709
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 710
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 708
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 666
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 667
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 668
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 669
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 671
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

    .prologue
    .line 644
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    .line 649
    .local v0, id:J
    :goto_0
    return-wide v0

    .line 647
    .end local v0           #id:J
    :cond_0
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .restart local v0       #id:J
    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 632
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-wide/high16 v5, -0x8000

    .line 1097
    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    .line 1098
    .local v0, count:I
    const/4 v1, 0x0

    .line 1100
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 1105
    iget-boolean v4, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1108
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1112
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->findSyncPosition()I

    move-result v2

    .line 1113
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 1115
    invoke-virtual {p0, v2, v9}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1116
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 1118
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->setNextSelectedPositionInt(I)V

    .line 1119
    const/4 v1, 0x1

    .line 1123
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 1125
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1128
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 1129
    add-int/lit8 v2, v0, -0x1

    .line 1131
    :cond_1
    if-gez v2, :cond_2

    .line 1132
    const/4 v2, 0x0

    .line 1136
    :cond_2
    invoke-virtual {p0, v2, v9}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1137
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 1139
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/HtcAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1141
    :cond_3
    if-ltz v3, :cond_4

    .line 1142
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcAdapterView;->setNextSelectedPositionInt(I)V

    .line 1143
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->checkSelectionChanged()V

    .line 1144
    const/4 v1, 0x1

    .line 1148
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 1150
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1151
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    .line 1152
    iput v8, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 1153
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 1156
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    .line 1157
    iput-wide v5, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    .line 1160
    iput-boolean v7, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1161
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->checkSelectionChanged()V

    .line 1163
    :cond_5
    return-void
.end method

.method public isHorizontalStyle()Z
    .locals 2

    .prologue
    .line 329
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
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

    .prologue
    .line 776
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1281
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 978
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 979
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 980
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1069
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1070
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1071
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1072
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1076
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1077
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1078
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1079
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1059
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1060
    invoke-direct {p0}, Lcom/htc/widget/HtcAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1061
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1062
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1065
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 622
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutHeight:I

    .line 623
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1045
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1048
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1050
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1051
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1052
    const/4 v1, 0x1

    .line 1054
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 383
    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->playSoundEffect(I)V

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 392
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 8

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1333
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1334
    iput-boolean v5, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    .line 1337
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1338
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutWidth:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncWidth:J

    .line 1339
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1341
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1342
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 1343
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1344
    if-eqz v1, :cond_0

    .line 1345
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    .line 1347
    :cond_0
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    .line 1392
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1350
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1351
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1352
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1353
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 1357
    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1358
    if-eqz v1, :cond_3

    .line 1359
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificLeft:I

    .line 1361
    :cond_3
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1355
    :cond_4
    iput-wide v6, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    goto :goto_1

    .line 1364
    .end local v0           #adapter:Landroid/widget/Adapter;,"TT;"
    .end local v1           #v:Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncHeight:J

    .line 1365
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_7

    .line 1367
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1368
    .restart local v1       #v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1369
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1370
    if-eqz v1, :cond_6

    .line 1371
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1373
    :cond_6
    iput v4, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1376
    .end local v1           #v:Landroid/view/View;
    :cond_7
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1377
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1378
    .restart local v0       #adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_9

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1379
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    .line 1383
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1384
    if-eqz v1, :cond_8

    .line 1385
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcAdapterView;->mSpecificTop:I

    .line 1387
    :cond_8
    iput v5, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1381
    :cond_9
    iput-wide v6, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_2
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 617
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 595
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 607
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 998
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 999
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 1005
    new-instance v0, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/HtcAdapterView$SelectionNotifier;-><init>(Lcom/htc/widget/HtcAdapterView;Lcom/htc/widget/HtcAdapterView$1;)V

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectionNotifier:Lcom/htc/widget/HtcAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 1014
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

    .line 1015
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->sendAccessibilityEvent(I)V

    .line 1017
    :cond_3
    return-void

    .line 1009
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
    .parameter "emptyView"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 751
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mEmptyView:Landroid/view/View;

    .line 753
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 754
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 755
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcAdapterView;->updateEmptyStatus(Z)V

    .line 756
    return-void

    .line 754
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 782
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 784
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    .line 785
    if-nez p1, :cond_1

    .line 786
    iput-boolean v2, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 789
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 790
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 782
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 789
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 794
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 795
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 797
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 798
    if-eqz p1, :cond_1

    .line 799
    iput-boolean v3, p0, Lcom/htc/widget/HtcAdapterView;->mDesiredFocusableState:Z

    .line 802
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 803
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 795
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 802
    goto :goto_1
.end method

.method public setListStyle(Lcom/htc/widget/HtcAdapterView$ListStyle;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 311
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mStyle:Lcom/htc/widget/HtcAdapterView$ListStyle;

    .line 312
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1306
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    .line 1309
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1310
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    .line 1312
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1313
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1314
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncColumnId:J

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    .line 1319
    iget-boolean v0, p0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1320
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSyncPosition:I

    .line 1321
    iget-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSyncRowId:J

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 879
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 362
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 363
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 425
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcAdapterView;->setLongClickable(Z)V

    .line 428
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 429
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 478
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView;->mOnItemSelectedListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 479
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1289
    .local p0, this:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    .line 1292
    invoke-virtual {p0}, Lcom/htc/widget/HtcAdapterView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    .line 1298
    :goto_0
    return-void

    .line 1295
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    goto :goto_0
.end method

.method public abstract setSelection(I)V
.end method
