.class public abstract Lcom/htc/opensense/widget/AlbumAdapterView;
.super Landroid/view/ViewGroup;
.source "AlbumAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/AlbumAdapterView$1;,
        Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;,
        Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;,
        Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;,
        Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;,
        Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;,
        Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;
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

.field mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/widget/AlbumAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 60
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 70
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 102
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    .line 128
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 134
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 139
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 145
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 177
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 182
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 201
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 60
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 70
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 102
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    .line 128
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 134
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 139
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 145
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 177
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 182
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 201
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    .line 60
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 70
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 102
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    .line 128
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 134
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 139
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 145
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 177
    iput v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 182
    iput-wide v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 201
    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense/widget/AlbumAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/widget/AlbumAdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 874
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 885
    :goto_0
    return-void

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 878
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 880
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 883
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/opensense/widget/AlbumAdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 p1, 0x0

    .line 711
    :cond_0
    if-eqz p1, :cond_3

    .line 712
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAdapterView;->setVisibility(I)V

    .line 723
    :goto_0
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 724
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mTop:I

    iget v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mRight:I

    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView;->onLayout(ZIIII)V

    .line 730
    :cond_1
    :goto_1
    return-void

    .line 717
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 421
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
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
    .line 434
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
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
    .line 462
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
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
    .line 447
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blockLayoutRequests(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 1123
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    .line 1124
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 889
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

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
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 689
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 690
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 694
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 695
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 696
    iget-object v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 697
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/opensense/widget/AlbumAdapterView;->updateEmptyStatus(Z)V

    .line 699
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 689
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 690
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 694
    goto :goto_2

    :cond_8
    move v3, v5

    .line 695
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 956
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->selectionChanged()V

    .line 958
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedPosition:I

    .line 959
    iget-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldSelectedRowId:J

    .line 961
    :cond_1
    return-void
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
    .line 767
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 768
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
    .line 759
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 760
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 972
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    .line 974
    .local v2, count:I
    if-nez v2, :cond_1

    .line 975
    const/4 v14, -0x1

    .line 1047
    :cond_0
    :goto_0
    return v14

    .line 978
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 979
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 982
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 983
    const/4 v14, -0x1

    goto :goto_0

    .line 987
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 988
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 995
    .local v3, endTime:J
    move v5, v14

    .line 998
    .local v5, first:I
    move v10, v14

    .line 1001
    .local v10, last:I
    const/4 v11, 0x0

    .line 1011
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1012
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1013
    const/4 v14, -0x1

    goto :goto_0

    .line 1031
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1033
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1034
    move v14, v10

    .line 1036
    const/4 v11, 0x0

    .line 1016
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1017
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1018
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1023
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1024
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1026
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1047
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1023
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1024
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1037
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1039
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1040
    move v14, v5

    .line 1042
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
    .line 567
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 648
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 610
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 739
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 740
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
    .locals 3
    .parameter "position"

    .prologue
    .line 744
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 745
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v1, -0x8000

    :goto_0
    return-wide v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 620
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 253
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 316
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 362
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 580
    move-object v3, p1

    .line 583
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

    .line 584
    move-object v3, v4

    goto :goto_0

    .line 586
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 600
    :cond_0
    :goto_1
    return v5

    .line 592
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getChildCount()I

    move-result v0

    .line 593
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 594
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 593
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 551
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 552
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 553
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 554
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 556
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 528
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 893
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    .line 894
    .local v0, count:I
    const/4 v1, 0x0

    .line 896
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 901
    iget-boolean v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 904
    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 908
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->findSyncPosition()I

    move-result v2

    .line 909
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 911
    invoke-virtual {p0, v2, v7}, Lcom/htc/opensense/widget/AlbumAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 912
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 914
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAdapterView;->setNextSelectedPositionInt(I)V

    .line 915
    const/4 v1, 0x1

    .line 919
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 921
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 924
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 925
    add-int/lit8 v2, v0, -0x1

    .line 927
    :cond_1
    if-gez v2, :cond_2

    .line 928
    const/4 v2, 0x0

    .line 932
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/htc/opensense/widget/AlbumAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 933
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 935
    invoke-virtual {p0, v2, v5}, Lcom/htc/opensense/widget/AlbumAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 937
    :cond_3
    if-ltz v3, :cond_4

    .line 938
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/AlbumAdapterView;->setNextSelectedPositionInt(I)V

    .line 939
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->checkSelectionChanged()V

    .line 940
    const/4 v1, 0x1

    .line 944
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 946
    iput v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 947
    iput-wide v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 948
    iput v6, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 949
    iput-wide v8, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 950
    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 951
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->checkSelectionChanged()V

    .line 953
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 658
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1059
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    return p1
.end method

.method public notifyDataChanged(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 776
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    .line 777
    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    .line 778
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    .line 782
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 787
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->checkFocus()V

    .line 788
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    .line 789
    return-void

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 518
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLayoutHeight:I

    .line 519
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->playSoundEffect(I)V

    .line 268
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/view/View;IJ)V

    .line 269
    const/4 v0, 0x1

    .line 272
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1092
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1093
    iput-boolean v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    .line 1094
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncHeight:J

    .line 1095
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1097
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/AlbumAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1098
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 1099
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 1100
    if-eqz v1, :cond_0

    .line 1101
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    .line 1103
    :cond_0
    iput v4, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    .line 1120
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1106
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/opensense/widget/AlbumAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1107
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1108
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1109
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 1113
    :goto_1
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 1114
    if-eqz v1, :cond_3

    .line 1115
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSpecificTop:I

    .line 1117
    :cond_3
    iput v5, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1111
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 510
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 511
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 475
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 487
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 857
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 858
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectionNotifier:Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 864
    new-instance v0, Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;-><init>(Lcom/htc/opensense/widget/AlbumAdapterView;Lcom/htc/opensense/widget/AlbumAdapterView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectionNotifier:Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectionNotifier:Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectionNotifier:Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 871
    :cond_2
    :goto_0
    return-void

    .line 868
    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->fireOnSelected()V

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

    .prologue
    .line 633
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mEmptyView:Landroid/view/View;

    .line 635
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 636
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 637
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->updateEmptyStatus(Z)V

    .line 638
    return-void

    .line 636
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 664
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 666
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDesiredFocusableState:Z

    .line 667
    if-nez p1, :cond_1

    .line 668
    iput-boolean v2, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 671
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 672
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 664
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 671
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 676
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 677
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 679
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 680
    if-eqz p1, :cond_1

    .line 681
    iput-boolean v3, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDesiredFocusableState:Z

    .line 684
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 685
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 677
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 684
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1077
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 1078
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 1080
    iget-boolean v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1081
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncPosition:I

    .line 1082
    iget-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSyncRowId:J

    .line 1084
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 750
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 245
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemClickListener;

    .line 246
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 305
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/widget/AlbumAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->setLongClickable(Z)V

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemLongClickListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemLongClickListener;

    .line 309
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 358
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOnItemSelectedListener:Lcom/htc/opensense/widget/AlbumAdapterView$OnItemSelectedListener;

    .line 359
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1067
    .local p0, this:Lcom/htc/opensense/widget/AlbumAdapterView;,"Lcom/htc/opensense/widget/AlbumAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 1068
    invoke-virtual {p0, p1}, Lcom/htc/opensense/widget/AlbumAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 1069
    return-void
.end method

.method public abstract setSelection(I)V
.end method
