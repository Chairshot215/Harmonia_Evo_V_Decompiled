.class public Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;
.super Landroid/widget/Filter;
.source "FilterableGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/FilterableGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayFilters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$WrapperFilterResults;,
        Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$ArrayFilterResults;
    }
.end annotation


# instance fields
.field private mFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;->mFilterList:Ljava/util/ArrayList;

    .line 121
    return-void
.end method


# virtual methods
.method public declared-synchronized addFilter(Landroid/widget/Filter;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1
    .parameter "constraint"

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method protected declared-synchronized publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 160
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeFilter(Landroid/widget/Filter;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;->mFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
