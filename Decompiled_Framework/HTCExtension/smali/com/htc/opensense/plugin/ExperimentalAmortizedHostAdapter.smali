.class public Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;
.super Lcom/htc/opensense/plugin/HostListAdapter;
.source "ExperimentalAmortizedHostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExperimentalAmortizedHostAdapter"


# instance fields
.field private mIndexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMinHeap:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    return-void
.end method

.method private resetIndexCache()V
    .locals 4

    iget-object v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    iget-object v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    goto :goto_1

    :cond_1
    const-string v2, "ExperimentalAmortizedHostAdapter"

    const-string v3, "mMinHeap/mIndexCache cleared!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->resetIndexCache()V

    new-instance v0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;-><init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->registerDataSetObserver()V

    iget-object v1, v0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    iget-object v1, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    new-instance v2, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public varargs addExteriorAdapters([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 8

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->resetIndexCache()V

    move-object v1, p1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-direct {v4, p0, v0}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;-><init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->registerDataSetObserver()V

    iget-object v5, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    iget-object v5, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->removeExteriorAdapters()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v3, v1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getItemsCountLimit()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getItemsCountLimit()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getItemsCountLimit()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getExteriorAdapterAtPosition(I)Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v2, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getExteriorContextMenuItems(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v2, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 9

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v8, v8, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v8, v8, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v8, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemLayoutId(I)I

    move-result v5

    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayouts()[I

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v6

    array-length v4, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v1, v2

    if-ne v3, v5, :cond_0

    :goto_1
    return v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v7

    :cond_2
    const/4 v7, -0x1

    goto :goto_1
.end method

.method public getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;
    .locals 11

    const/4 v5, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_2

    :cond_0
    const-string v6, "ExperimentalAmortizedHostAdapter"

    const-string v7, "getRemoteAdapterPosition %d, %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    goto :goto_0

    :cond_3
    move v1, p1

    :cond_4
    if-lez v1, :cond_5

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_5
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v6, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v6, v6, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    invoke-direct {v8, v4}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    iget-object v7, v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v7, v7, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v1, 0x1

    :goto_2
    if-gt v3, p1, :cond_a

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    invoke-direct {v8, v4}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    iget-object v7, v4, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v7, v7, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_9

    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "ExperimentalAmortizedHostAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdapterPosition is null at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    :goto_1
    iget-object v4, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v5, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationKey(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    iget-object v4, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemLayoutId(I)I

    move-result v2

    invoke-static {v2}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ExperimentalAmortizedHostAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Layout unsupported!  Only HTC common layouts are supported! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;-><init>()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const-string v3, "ExperimentalAmortizedHostAdapter"

    const-string v4, "Inflating supported layout %d: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getItemViewType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_5

    const-string v3, "ExperimentalAmortizedHostAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertView should not be null at this point! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v3, p2

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->resetIndexCache()V

    invoke-super {p0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->resetIndexCache()V

    invoke-super {p0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    iget v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v6}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    iget v4, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    iget-wide v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    iget v6, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    iput v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    iget-object v6, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v6, v6, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v7, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemId(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    iget-object v6, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v6, v6, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    iput v4, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    iput-wide v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p3, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->position:I

    iget-object v1, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v3, v1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    iget-object v3, v1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->unregisterDataSetObserver()V

    iget-object v3, v1, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->clear()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->resetIndexCache()V

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public removeExteriorAdapters()V
    .locals 4

    iget-object v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v2, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->unregisterDataSetObserver()V

    iget-object v2, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->clear()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->resetIndexCache()V

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    iget-object v2, p0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;

    iget-object v2, v0, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/ExperimentalAmortizedHostAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
