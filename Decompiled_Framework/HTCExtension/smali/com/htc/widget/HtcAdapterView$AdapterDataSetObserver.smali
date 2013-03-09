.class Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HtcAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field protected mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/widget/HtcAdapterView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAdapterView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/widget/HtcAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/widget/HtcAdapterView;->access$000(Lcom/htc/widget/HtcAdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->checkFocus()V

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcAdapterView$OnDataSetListener;->onOnDataSetChange()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const-wide/high16 v2, -0x8000

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/widget/HtcAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    #calls: Lcom/htc/widget/HtcAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/widget/HtcAdapterView;->access$100(Lcom/htc/widget/HtcAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget-object v1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iget v1, v1, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/widget/HtcAdapterView;->mOldItemCount:I

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput v5, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput v4, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedRowId:J

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput v4, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedPosition:I

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedRowId:J

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView;->mSelectedColumnId:J

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-wide v2, v0, Lcom/htc/widget/HtcAdapterView;->mNextSelectedColumnId:J

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    iput-boolean v5, v0, Lcom/htc/widget/HtcAdapterView;->mNeedSync:Z

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->checkFocus()V

    iget-object v0, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/widget/HtcAdapterView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAdapterView;->requestLayout()V

    return-void
.end method

.method public setDataSetListener(Lcom/htc/widget/HtcAdapterView$OnDataSetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView$AdapterDataSetObserver;->mDataSetListener:Lcom/htc/widget/HtcAdapterView$OnDataSetListener;

    return-void
.end method
