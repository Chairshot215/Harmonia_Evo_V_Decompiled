.class Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AlbumAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widget/AlbumAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widget/AlbumAdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 791
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 839
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 840
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 797
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    .line 798
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget v1, v1, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldItemCount:I

    .line 799
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    .line 803
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget v0, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget v0, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/home/personalize/widget/AlbumAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->access$000(Lcom/htc/home/personalize/widget/AlbumAdapterView;Landroid/os/Parcelable;)V

    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 810
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->checkFocus()V

    .line 811
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->requestLayout()V

    .line 812
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widget/AlbumAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 816
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mDataChanged:Z

    .line 818
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    #calls: Lcom/htc/home/personalize/widget/AlbumAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->access$100(Lcom/htc/home/personalize/widget/AlbumAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iget v1, v1, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mOldItemCount:I

    .line 826
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iput v3, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mItemCount:I

    .line 827
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iput v2, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedPosition:I

    .line 828
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iput-wide v4, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mSelectedRowId:J

    .line 829
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iput v2, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNextSelectedPosition:I

    .line 830
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iput-wide v4, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNextSelectedRowId:J

    .line 831
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    iput-boolean v3, v0, Lcom/htc/home/personalize/widget/AlbumAdapterView;->mNeedSync:Z

    .line 832
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->checkSelectionChanged()V

    .line 834
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->checkFocus()V

    .line 835
    iget-object v0, p0, Lcom/htc/home/personalize/widget/AlbumAdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widget/AlbumAdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widget/AlbumAdapterView;->requestLayout()V

    .line 836
    return-void
.end method
