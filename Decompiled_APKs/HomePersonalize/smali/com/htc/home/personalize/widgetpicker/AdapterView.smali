.class public abstract Lcom/htc/home/personalize/widgetpicker/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/widgetpicker/AdapterView$1;,
        Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;,
        Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;,
        Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterContextMenuInfo;,
        Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;,
        Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;,
        Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;
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

.field mOnItemClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/home/personalize/widgetpicker/AdapterView",
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
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 62
    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mInLayout:Z

    .line 147
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    .line 153
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    .line 158
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    .line 164
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    .line 196
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedPosition:I

    .line 201
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedRowId:J

    .line 220
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mBlockLayoutRequests:Z

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mInLayout:Z

    .line 147
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    .line 153
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    .line 158
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    .line 164
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    .line 196
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedPosition:I

    .line 201
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedRowId:J

    .line 220
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mBlockLayoutRequests:Z

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mInLayout:Z

    .line 147
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    .line 153
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    .line 158
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    .line 164
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    .line 196
    iput v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedPosition:I

    .line 201
    iput-wide v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedRowId:J

    .line 220
    iput-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mBlockLayoutRequests:Z

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/widgetpicker/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/widgetpicker/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/widgetpicker/AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 861
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 865
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 866
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 867
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/htc/home/personalize/widgetpicker/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 870
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/htc/home/personalize/widgetpicker/AdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 p1, 0x0

    .line 714
    :cond_0
    if-eqz p1, :cond_3

    .line 715
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 717
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->setVisibility(I)V

    .line 726
    :goto_0
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 727
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mLeft:I

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mTop:I

    iget v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mRight:I

    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->onLayout(ZIIII)V

    .line 733
    :cond_1
    :goto_1
    return-void

    .line 720
    :cond_2
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :cond_4
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 438
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
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
    .line 451
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
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
    .line 479
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
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
    .line 464
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 905
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

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
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 692
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 693
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 697
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 698
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 699
    iget-object v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 700
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->updateEmptyStatus(Z)V

    .line 702
    :cond_4
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_5
    move v1, v5

    .line 692
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_6
    move v2, v5

    .line 693
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_7
    move v3, v5

    .line 697
    goto :goto_2

    :cond_8
    move v3, v5

    .line 698
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 972
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->selectionChanged()V

    .line 974
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedPosition:I

    .line 975
    iget-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldSelectedRowId:J

    .line 977
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 876
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 881
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 882
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 888
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 889
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 892
    :cond_1
    if-nez v0, :cond_3

    .line 893
    if-eqz v1, :cond_2

    .line 894
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 897
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 900
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
    .line 770
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 771
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
    .line 762
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 763
    return-void
.end method

.method findSyncPosition()I
    .locals 19

    .prologue
    .line 988
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    .line 990
    .local v2, count:I
    if-nez v2, :cond_1

    .line 991
    const/4 v14, -0x1

    .line 1063
    :cond_0
    :goto_0
    return v14

    .line 994
    :cond_1
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 995
    .local v8, idToMatch:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncPosition:I

    .line 998
    .local v14, seed:I
    const-wide/high16 v15, -0x8000

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    .line 999
    const/4 v14, -0x1

    goto :goto_0

    .line 1003
    :cond_2
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1004
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1006
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1011
    .local v3, endTime:J
    move v5, v14

    .line 1014
    .local v5, first:I
    move v10, v14

    .line 1017
    .local v10, last:I
    const/4 v11, 0x0

    .line 1027
    .local v11, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1028
    .local v1, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v1, :cond_5

    .line 1029
    const/4 v14, -0x1

    goto :goto_0

    .line 1047
    .local v6, hitFirst:Z
    .local v7, hitLast:Z
    .local v12, rowId:J
    :cond_3
    if-nez v6, :cond_4

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    .line 1049
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 1050
    move v14, v10

    .line 1052
    const/4 v11, 0x0

    .line 1032
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_6

    .line 1033
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1034
    .restart local v12       #rowId:J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_0

    .line 1039
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_7

    const/4 v7, 0x1

    .line 1040
    .restart local v7       #hitLast:Z
    :goto_2
    if-nez v5, :cond_8

    const/4 v6, 0x1

    .line 1042
    .restart local v6       #hitFirst:Z
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1063
    .end local v6           #hitFirst:Z
    .end local v7           #hitLast:Z
    .end local v12           #rowId:J
    :cond_6
    const/4 v14, -0x1

    goto :goto_0

    .line 1039
    .restart local v12       #rowId:J
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 1040
    .restart local v7       #hitLast:Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1053
    .restart local v6       #hitFirst:Z
    :cond_9
    if-nez v7, :cond_a

    if-nez v11, :cond_5

    if-nez v6, :cond_5

    .line 1055
    :cond_a
    add-int/lit8 v5, v5, -0x1

    .line 1056
    move v14, v5

    .line 1058
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
    .line 568
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 651
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 611
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 742
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 743
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
    .line 747
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 748
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
    .line 621
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 272
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 335
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemLongClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 379
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 581
    move-object v3, p1

    .line 584
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

    .line 585
    move-object v3, v4

    goto :goto_0

    .line 587
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 601
    :cond_0
    :goto_1
    return v5

    .line 593
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getChildCount()I

    move-result v0

    .line 594
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 595
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    iget v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 594
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 552
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 553
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 554
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 555
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 557
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
    .line 538
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 529
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 909
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    .line 910
    .local v0, count:I
    const/4 v1, 0x0

    .line 912
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 917
    iget-boolean v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 920
    iput-boolean v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 924
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->findSyncPosition()I

    move-result v2

    .line 925
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 927
    invoke-virtual {p0, v2, v7}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 928
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 930
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->setNextSelectedPositionInt(I)V

    .line 931
    const/4 v1, 0x1

    .line 935
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 937
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 940
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 941
    add-int/lit8 v2, v0, -0x1

    .line 943
    :cond_1
    if-gez v2, :cond_2

    .line 944
    const/4 v2, 0x0

    .line 948
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 949
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 951
    invoke-virtual {p0, v2, v5}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 953
    :cond_3
    if-ltz v3, :cond_4

    .line 954
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->setNextSelectedPositionInt(I)V

    .line 955
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->checkSelectionChanged()V

    .line 956
    const/4 v1, 0x1

    .line 960
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 962
    iput v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    .line 963
    iput-wide v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    .line 964
    iput v6, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    .line 965
    iput-wide v8, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    .line 966
    iput-boolean v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 967
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->checkSelectionChanged()V

    .line 969
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 661
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1075
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
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
    .line 519
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mLayoutHeight:I

    .line 520
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->playSoundEffect(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;->onItemClick(Lcom/htc/home/personalize/widgetpicker/AdapterView;Landroid/view/View;IJ)V

    .line 288
    const/4 v0, 0x1

    .line 291
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1108
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1109
    iput-boolean v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 1110
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncHeight:J

    .line 1111
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1113
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1114
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 1115
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncPosition:I

    .line 1116
    if-eqz v1, :cond_0

    .line 1117
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSpecificTop:I

    .line 1119
    :cond_0
    iput v4, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncMode:I

    .line 1136
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1122
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1123
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1124
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1125
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 1129
    :goto_1
    iget v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncPosition:I

    .line 1130
    if-eqz v1, :cond_3

    .line 1131
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSpecificTop:I

    .line 1133
    :cond_3
    iput v5, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1127
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 514
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 492
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 504
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 839
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 840
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectionNotifier:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 846
    new-instance v0, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;-><init>(Lcom/htc/home/personalize/widgetpicker/AdapterView;Lcom/htc/home/personalize/widgetpicker/AdapterView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectionNotifier:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectionNotifier:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectionNotifier:Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 855
    :cond_2
    :goto_0
    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 856
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->sendAccessibilityEvent(I)V

    .line 858
    :cond_3
    return-void

    .line 850
    :cond_4
    invoke-direct {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->fireOnSelected()V

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
    .line 636
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mEmptyView:Landroid/view/View;

    .line 638
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 639
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 640
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->updateEmptyStatus(Z)V

    .line 641
    return-void

    .line 639
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 667
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 669
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDesiredFocusableState:Z

    .line 670
    if-nez p1, :cond_1

    .line 671
    iput-boolean v2, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 674
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 675
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 667
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 674
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 679
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 680
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 682
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 683
    if-eqz p1, :cond_1

    .line 684
    iput-boolean v3, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDesiredFocusableState:Z

    .line 687
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 688
    return-void

    .end local v1           #empty:Z
    :cond_3
    move v1, v2

    .line 680
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_4
    move v3, v2

    .line 687
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1093
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    .line 1094
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    .line 1096
    iget-boolean v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1097
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncPosition:I

    .line 1098
    iget-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSyncRowId:J

    .line 1100
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 753
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 264
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemClickListener;

    .line 265
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 324
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->setLongClickable(Z)V

    .line 327
    :cond_0
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemLongClickListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemLongClickListener;

    .line 328
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 375
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOnItemSelectedListener:Lcom/htc/home/personalize/widgetpicker/AdapterView$OnItemSelectedListener;

    .line 376
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1083
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>;"
    iput p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    .line 1084
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    .line 1085
    return-void
.end method

.method public abstract setSelection(I)V
.end method
