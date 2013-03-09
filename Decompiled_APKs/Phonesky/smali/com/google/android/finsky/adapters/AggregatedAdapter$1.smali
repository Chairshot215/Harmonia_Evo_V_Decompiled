.class Lcom/google/android/finsky/adapters/AggregatedAdapter$1;
.super Landroid/database/DataSetObserver;
.source "AggregatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/AggregatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/AggregatedAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/AggregatedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    .local p0, this:Lcom/google/android/finsky/adapters/AggregatedAdapter$1;,"Lcom/google/android/finsky/adapters/AggregatedAdapter.1;"
    iput-object p1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/finsky/adapters/AggregatedAdapter$1;,"Lcom/google/android/finsky/adapters/AggregatedAdapter.1;"
    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/adapters/AggregatedAdapter;->mDirty:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->access$002(Lcom/google/android/finsky/adapters/AggregatedAdapter;Z)Z

    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    #getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 49
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/finsky/adapters/AggregatedAdapter$1;,"Lcom/google/android/finsky/adapters/AggregatedAdapter.1;"
    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/finsky/adapters/AggregatedAdapter;->mDirty:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->access$002(Lcom/google/android/finsky/adapters/AggregatedAdapter;Z)Z

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$1;->this$0:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    #getter for: Lcom/google/android/finsky/adapters/AggregatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->access$100(Lcom/google/android/finsky/adapters/AggregatedAdapter;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 55
    return-void
.end method
