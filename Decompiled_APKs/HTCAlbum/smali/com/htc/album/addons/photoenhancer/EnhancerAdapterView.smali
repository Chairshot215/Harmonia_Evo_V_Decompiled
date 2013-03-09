.class public abstract Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;
.super Landroid/view/ViewGroup;
.source "EnhancerAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$1;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterDataSetObserver;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$AdapterContextMenuInfo;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;,
        Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;
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

.field private mEmptyView:Landroid/view/View;

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

.field mOnItemClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView",
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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 78
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 88
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 120
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mInLayout:Z

    .line 146
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    .line 152
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    .line 157
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    .line 163
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    .line 195
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    .line 200
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    .line 219
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBlockLayoutRequests:Z

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 78
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 88
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 120
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mInLayout:Z

    .line 146
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    .line 152
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    .line 157
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    .line 163
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    .line 195
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    .line 200
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    .line 219
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBlockLayoutRequests:Z

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    .line 78
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 88
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 120
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mInLayout:Z

    .line 146
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    .line 152
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    .line 157
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    .line 163
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    .line 195
    iput v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    .line 200
    iput-wide v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    .line 219
    iput-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBlockLayoutRequests:Z

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 860
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 864
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 866
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 869
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 p1, 0x0

    .line 713
    :cond_0
    if-eqz p1, :cond_3

    .line 714
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->setVisibility(I)V

    .line 725
    :goto_0
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 726
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mTop:I

    iget v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mRight:I

    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->onLayout(ZIIII)V

    .line 732
    :cond_1
    :goto_1
    return-void

    .line 719
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 730
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 437
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
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
    .line 450
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
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
    .line 478
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
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
    .line 463
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 904
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 691
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 692
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 696
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 697
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 698
    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 699
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->updateEmptyStatus(Z)V

    .line 701
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 691
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 692
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 696
    goto :goto_2

    :cond_8
    move v3, v5

    .line 697
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 971
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->selectionChanged()V

    .line 973
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedPosition:I

    .line 974
    iget-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOldSelectedRowId:J

    .line 976
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 875
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 880
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 881
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 887
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 888
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 891
    :cond_1
    if-nez v0, :cond_3

    .line 892
    if-eqz v1, :cond_2

    .line 893
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 896
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 899
    :cond_3
    return v0
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
    .line 769
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 770
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
    .line 761
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 762
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 987
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    .line 989
    .local v2, count:I
    if-nez v2, :cond_1

    .line 990
    const/4 v14, -0x1

    .line 1062
    :cond_0
    :goto_0
    return v14

    .line 993
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 994
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncPosition:I

    .line 997
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 998
    const/4 v14, -0x1

    goto :goto_0

    .line 1002
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1003
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1010
    .local v3, endTime:J
    move v5, v14

    .line 1013
    .local v5, first:I
    move v10, v14

    .line 1016
    .local v10, last:I
    const/4 v11, 0x0

    .line 1026
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1027
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1028
    const/4 v14, -0x1

    goto :goto_0

    .line 1046
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1048
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1049
    move v14, v10

    .line 1051
    const/4 v11, 0x0

    .line 1031
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1032
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1033
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1038
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1039
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1041
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1062
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1038
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1039
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1052
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1054
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1055
    move v14, v5

    .line 1057
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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 650
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 610
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 741
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 742
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
    .line 746
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 747
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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 271
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 334
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemLongClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 378
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
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
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getChildCount()I

    move-result v0

    .line 593
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 594
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    iget v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 552
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getSelectedItemPosition()I

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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 528
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 908
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mItemCount:I

    .line 909
    .local v0, count:I
    const/4 v1, 0x0

    .line 911
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 916
    iget-boolean v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 919
    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 923
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->findSyncPosition()I

    move-result v2

    .line 924
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 926
    invoke-virtual {p0, v2, v7}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 927
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 929
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->setNextSelectedPositionInt(I)V

    .line 930
    const/4 v1, 0x1

    .line 934
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 936
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 939
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 940
    add-int/lit8 v2, v0, -0x1

    .line 942
    :cond_1
    if-gez v2, :cond_2

    .line 943
    const/4 v2, 0x0

    .line 947
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 948
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 950
    invoke-virtual {p0, v2, v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 952
    :cond_3
    if-ltz v3, :cond_4

    .line 953
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->setNextSelectedPositionInt(I)V

    .line 954
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->checkSelectionChanged()V

    .line 955
    const/4 v1, 0x1

    .line 959
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 961
    iput v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    .line 962
    iput-wide v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    .line 963
    iput v6, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    .line 964
    iput-wide v8, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    .line 965
    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 966
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->checkSelectionChanged()V

    .line 968
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 660
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1074
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    return p1
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
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLayoutHeight:I

    .line 519
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->playSoundEffect(I)V

    .line 286
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;->onItemClick(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Landroid/view/View;IJ)V

    .line 287
    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1107
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1108
    iput-boolean v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    .line 1109
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncHeight:J

    .line 1110
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1112
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1113
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 1114
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncPosition:I

    .line 1115
    if-eqz v1, :cond_0

    .line 1116
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSpecificTop:I

    .line 1118
    :cond_0
    iput v4, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncMode:I

    .line 1135
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1122
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1123
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1124
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 1128
    :goto_1
    iget v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncPosition:I

    .line 1129
    if-eqz v1, :cond_3

    .line 1130
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSpecificTop:I

    .line 1132
    :cond_3
    iput v5, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1126
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 513
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 491
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 503
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 838
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 839
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectionNotifier:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 845
    new-instance v0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;-><init>(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$1;)V

    iput-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectionNotifier:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectionNotifier:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectionNotifier:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 854
    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 855
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->sendAccessibilityEvent(I)V

    .line 857
    :cond_3
    return-void

    .line 849
    :cond_4
    invoke-direct {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->fireOnSelected()V

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
    .line 635
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mEmptyView:Landroid/view/View;

    .line 637
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 638
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 639
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->updateEmptyStatus(Z)V

    .line 640
    return-void

    .line 638
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 666
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 668
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDesiredFocusableState:Z

    .line 669
    if-nez p1, :cond_1

    .line 670
    iput-boolean v2, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 673
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 674
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 666
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 673
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 678
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 679
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 681
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 682
    if-eqz p1, :cond_1

    .line 683
    iput-boolean v3, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mDesiredFocusableState:Z

    .line 686
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 687
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 679
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 686
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1092
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedPosition:I

    .line 1093
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    .line 1095
    iget-boolean v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1096
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncPosition:I

    .line 1097
    iget-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSyncRowId:J

    .line 1099
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 752
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 263
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemClickListener;

    .line 264
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 323
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->setLongClickable(Z)V

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemLongClickListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemLongClickListener;

    .line 327
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 374
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mOnItemSelectedListener:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;

    .line 375
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1082
    .local p0, this:Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;,"Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView<TT;>;"
    iput p1, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedPosition:I

    .line 1083
    invoke-virtual {p0, p1}, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;->mSelectedRowId:J

    .line 1084
    return-void
.end method

.method public abstract setSelection(I)V
.end method
