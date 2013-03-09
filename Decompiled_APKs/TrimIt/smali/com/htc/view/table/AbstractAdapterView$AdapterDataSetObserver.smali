.class public Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AbstractAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/view/table/AbstractAdapterView;


# direct methods
.method public constructor <init>(Lcom/htc/view/table/AbstractAdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 746
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 794
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 795
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 752
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 753
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mOldItemCount:I

    .line 754
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v1}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 758
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget v0, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/view/table/AbstractAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/view/table/AbstractAdapterView;->access$000(Lcom/htc/view/table/AbstractAdapterView;Landroid/os/Parcelable;)V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 765
    :goto_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->checkFocus()V

    .line 766
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->requestLayout()V

    .line 767
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 4

    .prologue
    .local p0, this:Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;,"Lcom/htc/view/table/AbstractAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v3, 0x0

    .line 771
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mDataChanged:Z

    .line 773
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    #calls: Lcom/htc/view/table/AbstractAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/view/table/AbstractAdapterView;->access$100(Lcom/htc/view/table/AbstractAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget-object v1, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iget v1, v1, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mOldItemCount:I

    .line 781
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iput v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mItemCount:I

    .line 782
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    sget v1, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedPosition:I

    .line 783
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    sget-wide v1, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mSelectedRowId:J

    .line 784
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    sget v1, Lcom/htc/view/table/AbstractAdapterView;->INVALID_POSITION:I

    iput v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedPosition:I

    .line 785
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    sget-wide v1, Lcom/htc/view/table/AbstractAdapterView;->INVALID_ROW_ID:J

    iput-wide v1, v0, Lcom/htc/view/table/AbstractAdapterView;->mNextSelectedRowId:J

    .line 786
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    iput-boolean v3, v0, Lcom/htc/view/table/AbstractAdapterView;->mNeedSync:Z

    .line 787
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->checkSelectionChanged()V

    .line 789
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->checkFocus()V

    .line 790
    iget-object v0, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/view/table/AbstractAdapterView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractAdapterView;->requestLayout()V

    .line 791
    return-void
.end method
