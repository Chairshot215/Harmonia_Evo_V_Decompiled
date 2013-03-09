.class Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AlbumAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAdapterView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/AlbumAdapterView;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget v1, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget v0, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/opensense/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/AlbumAdapterView;->access$000(Lcom/htc/opensense/widget/AlbumAdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->checkFocus()V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mDataChanged:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    #calls: Lcom/htc/opensense/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->access$100(Lcom/htc/opensense/widget/AlbumAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iget v1, v1, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mOldItemCount:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iput v3, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mItemCount:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iput v2, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedPosition:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iput-wide v4, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mSelectedRowId:J

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iput v2, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedPosition:I

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iput-wide v4, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNextSelectedRowId:J

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    iput-boolean v3, v0, Lcom/htc/opensense/widget/AlbumAdapterView;->mNeedSync:Z

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->checkSelectionChanged()V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->checkFocus()V

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAdapterView;->requestLayout()V

    return-void
.end method
