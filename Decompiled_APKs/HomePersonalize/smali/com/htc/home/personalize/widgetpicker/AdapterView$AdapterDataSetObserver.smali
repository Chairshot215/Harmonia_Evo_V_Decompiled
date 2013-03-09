.class Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/widgetpicker/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widgetpicker/AdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 773
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 821
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 822
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 779
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    .line 780
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget v1, v1, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldItemCount:I

    .line 781
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    .line 785
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget v0, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    #calls: Lcom/htc/home/personalize/widgetpicker/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->access$000(Lcom/htc/home/personalize/widgetpicker/AdapterView;Landroid/os/Parcelable;)V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 792
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->checkFocus()V

    .line 793
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->requestLayout()V

    .line 794
    return-void

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;,"Lcom/htc/home/personalize/widgetpicker/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 798
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mDataChanged:Z

    .line 800
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    #calls: Lcom/htc/home/personalize/widgetpicker/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->access$100(Lcom/htc/home/personalize/widgetpicker/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget-object v1, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iget v1, v1, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mOldItemCount:I

    .line 808
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iput v3, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mItemCount:I

    .line 809
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iput v2, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedPosition:I

    .line 810
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iput-wide v4, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mSelectedRowId:J

    .line 811
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iput v2, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedPosition:I

    .line 812
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iput-wide v4, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNextSelectedRowId:J

    .line 813
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    iput-boolean v3, v0, Lcom/htc/home/personalize/widgetpicker/AdapterView;->mNeedSync:Z

    .line 814
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->checkSelectionChanged()V

    .line 816
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->checkFocus()V

    .line 817
    iget-object v0, p0, Lcom/htc/home/personalize/widgetpicker/AdapterView$AdapterDataSetObserver;->this$0:Lcom/htc/home/personalize/widgetpicker/AdapterView;

    invoke-virtual {v0}, Lcom/htc/home/personalize/widgetpicker/AdapterView;->requestLayout()V

    .line 818
    return-void
.end method
