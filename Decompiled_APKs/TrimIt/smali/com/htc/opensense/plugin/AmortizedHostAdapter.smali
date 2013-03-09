.class public Lcom/htc/opensense/plugin/AmortizedHostAdapter;
.super Lcom/htc/opensense/plugin/HostListAdapter;
.source "AmortizedHostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AmortizedHostAdapter"


# instance fields
.field private mIndexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;",
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
            "Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    .line 110
    return-void
.end method

.method private resetIndexCache()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 128
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->clear()V

    goto :goto_0

    .line 131
    .end local v0           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 132
    iget-object v2, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    .line 133
    iget-object v2, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 134
    .restart local v0       #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    const/4 v2, 0x0

    iput v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    goto :goto_1

    .line 136
    .end local v0           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_1
    const-string v2, "AmortizedHostAdapter"

    const-string v3, "mMinHeap/mIndexCache cleared!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method


# virtual methods
.method public addExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->resetIndexCache()V

    .line 143
    new-instance v0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;-><init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 145
    .local v0, new_observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->registerDataSetObserver()V

    .line 146
    iget-object v1, v0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 147
    iget-object v1, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    new-instance v2, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->notifyDataSetChanged()V

    .line 154
    .end local v0           #new_observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    :cond_0
    return-void
.end method

.method public varargs addExteriorAdapters([Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 8
    .parameter "adapters"

    .prologue
    .line 158
    if-eqz p1, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->resetIndexCache()V

    .line 160
    move-object v1, p1

    .local v1, arr$:[Lcom/htc/opensense/plugin/ExteriorListAdapter;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 161
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    new-instance v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-direct {v4, p0, v0}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;-><init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 164
    .local v4, new_observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    invoke-virtual {v4}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->registerDataSetObserver()V

    .line 165
    iget-object v5, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 166
    iget-object v5, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v4           #new_observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->notifyDataSetChanged()V

    .line 173
    .end local v1           #arr$:[Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v2           #i$:I
    .end local v3           #len$:I
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

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->removeExteriorAdapters()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, actual_count:I
    iget-object v3, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 287
    .local v1, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v3, v1, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 289
    .end local v1           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemsCountLimit()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemsCountLimit()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemsCountLimit()I

    move-result v0

    .end local v0           #actual_count:I
    :cond_1
    return v0
.end method

.method public getExteriorAdapterAtPosition(I)Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .locals 2
    .parameter "position"

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 459
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 462
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 416
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-object v1

    .line 420
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 421
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    .line 422
    iget-object v1, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getExteriorContextMenuItems(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 295
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 302
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 4
    .parameter "position"

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 466
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-nez v2, :cond_1

    .line 467
    :cond_0
    const/4 v1, 0x0

    .line 472
    :goto_0
    return-object v1

    .line 470
    :cond_1
    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v3, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v1

    .line 472
    .local v1, proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    goto :goto_0
.end method

.method public getItemViewProxy(II)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 4
    .parameter "position"
    .parameter "proxyType"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 477
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-nez v2, :cond_1

    .line 478
    :cond_0
    const/4 v1, 0x0

    .line 483
    :goto_0
    return-object v1

    .line 481
    :cond_1
    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v3, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v2, v3, p2}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemViewProxy(II)Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v1

    .line 483
    .local v1, proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 11
    .parameter "position"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 308
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_3

    .line 309
    iget-object v9, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v9, v9, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v10, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v9, v10}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemLayoutId(I)I

    move-result v5

    .line 310
    .local v5, lid:I
    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayouts()[I

    move-result-object v6

    .line 311
    .local v6, lids:[I
    const/4 v7, 0x0

    .line 312
    .local v7, order:I
    move-object v1, v6

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget v3, v1, v2

    .line 313
    .local v3, l:I
    if-ne v3, v5, :cond_1

    .line 325
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #l:I
    .end local v4           #len$:I
    .end local v5           #lid:I
    .end local v6           #lids:[I
    .end local v7           #order:I
    :cond_0
    :goto_1
    return v7

    .line 316
    .restart local v1       #arr$:[I
    .restart local v2       #i$:I
    .restart local v3       #l:I
    .restart local v4       #len$:I
    .restart local v5       #lid:I
    .restart local v6       #lids:[I
    .restart local v7       #order:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v3           #l:I
    :cond_2
    iget-object v9, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 319
    .local v8, r:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v9, v8, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v9, v9, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget-object v10, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v10, v10, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eq v9, v10, :cond_0

    .line 322
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 325
    .end local v1           #arr$:[I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #len$:I
    .end local v5           #lid:I
    .end local v6           #lids:[I
    .end local v7           #order:I
    .end local v8           #r:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_3
    const/4 v7, -0x1

    goto :goto_1
.end method

.method public getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    .locals 11
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 228
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getCount()I

    move-result v6

    if-lt p1, v6, :cond_2

    .line 230
    :cond_0
    const-string v6, "AmortizedHostAdapter"

    const-string v7, "getRemoteAdapterPosition %d, %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    :goto_0
    return-object v5

    .line 236
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 237
    iget-object v5, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    goto :goto_0

    .line 243
    :cond_3
    move v1, p1

    .line 244
    .local v1, head:I
    :cond_4
    if-lez v1, :cond_5

    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 248
    :cond_5
    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 249
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 250
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v6, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v6, v6, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 251
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    .end local v0           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_7
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 255
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 256
    .local v4, smallest:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    invoke-direct {v8, v4}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget v6, v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    iget-object v7, v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v7, v7, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 259
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #smallest:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_8
    add-int/lit8 v3, v1, 0x1

    .local v3, pos:I
    :goto_2
    if-gt v3, p1, :cond_a

    .line 267
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 268
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 269
    .restart local v4       #smallest:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    invoke-direct {v8, v4}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;-><init>(Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget v6, v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    iget-object v7, v4, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v7, v7, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 272
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mMinHeap:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v4           #smallest:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 277
    :cond_a
    iget-object v6, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 278
    iget-object v5, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mIndexCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 336
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_6

    .line 337
    iget-object v4, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eqz v4, :cond_6

    .line 341
    if-eqz p2, :cond_2

    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    .line 346
    .local v2, holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    :goto_0
    iget-object v4, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v5, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationKey(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;->mSeparationKey:Ljava/lang/Object;

    .line 348
    iget-object v4, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v5, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    invoke-virtual {v4, v5}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v3

    .line 349
    .local v3, proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    const/4 v1, 0x0

    .line 351
    .local v1, exteriorInflater:Landroid/view/LayoutInflater;
    if-eqz v3, :cond_6

    .line 352
    if-nez p2, :cond_0

    .line 353
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v4

    invoke-static {v4}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->isSupported(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    const-string v4, "AmortizedHostAdapter"

    const-string v5, "Inflating supported layout %d: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemViewType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v4, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v5

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 392
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 393
    invoke-virtual {v3, p2, v2}, Lcom/htc/opensense/plugin/ItemViewProxy;->apply(Landroid/view/View;Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;)V

    .line 394
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    :cond_1
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->recycle()V

    move-object v4, p2

    .line 402
    .end local v1           #exteriorInflater:Landroid/view/LayoutInflater;
    .end local v2           #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    .end local v3           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :goto_2
    return-object v4

    .line 344
    :cond_2
    new-instance v2, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;-><init>()V

    .restart local v2       #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    goto :goto_0

    .line 360
    .restart local v1       #exteriorInflater:Landroid/view/LayoutInflater;
    .restart local v3       #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :cond_3
    const-string v4, "backdoor"

    invoke-virtual {v3, v4}, Lcom/htc/opensense/plugin/ItemViewProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v4, v4, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 362
    const-string v4, "inflateExterior"

    invoke-virtual {v3, v4}, Lcom/htc/opensense/plugin/ItemViewProxy;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 363
    const-string v4, "AmortizedHostAdapter"

    const-string v5, "Inflating backdoor exterior layout %d: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemViewType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v4

    invoke-virtual {v1, v4, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 372
    :cond_4
    const-string v4, "AmortizedHostAdapter"

    const-string v5, "Inflating backdoor host layout %d: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemViewType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v4, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v5

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 380
    :cond_5
    const-string v4, "AmortizedHostAdapter"

    const-string v5, "Layout not supported!  Only HTC common layouts are supported!  %d: %d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getItemViewType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/ItemViewProxy;->getItemLayoutId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 402
    .end local v1           #exteriorInflater:Landroid/view/LayoutInflater;
    .end local v2           #holder:Lcom/htc/opensense/plugin/HostListAdapter$ViewHolder;
    .end local v3           #proxy:Lcom/htc/opensense/plugin/ItemViewProxy;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->getListItemLayoutCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->resetIndexCache()V

    .line 218
    invoke-super {p0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetChanged()V

    .line 219
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->resetIndexCache()V

    .line 224
    invoke-super {p0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetInvalidated()V

    .line 225
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 429
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .line 430
    .local v1, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v6}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 431
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-nez v0, :cond_0

    .line 443
    :goto_0
    return v5

    .line 434
    :cond_0
    iget v4, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 435
    .local v4, oldPosition:I
    iget-wide v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    .line 436
    .local v2, oldId:J
    iget v6, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    iput v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 437
    iget-object v6, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v6, v6, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    iget v7, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemId(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    .line 438
    iget-object v6, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v6, v6, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v6, v7, v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 439
    const/4 v5, 0x1

    goto :goto_0

    .line 441
    :cond_1
    iput v4, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 442
    iput-wide v2, v1, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 449
    invoke-virtual {p0, p3}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getRemoteAdapterPosition(I)Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    move-result-object v0

    .line 450
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    if-eqz v0, :cond_0

    .line 451
    iget p3, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->position:I

    .line 452
    iget-object v1, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v1, v1, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v1, p3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->onItemClick(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    .line 177
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->isSorted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, adapter_removed:Z
    iget-object v3, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 181
    .local v1, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v3, v1, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 183
    iget-object v3, v1, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->unregisterDataSetObserver()V

    .line 184
    iget-object v3, v1, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v3, v3, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 185
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->clear()V

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 191
    .end local v1           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_1
    if-eqz v0, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->resetIndexCache()V

    .line 193
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->notifyDataSetChanged()V

    .line 200
    .end local v0           #adapter_removed:Z
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;>;"
    :cond_2
    return-void
.end method

.method public removeExteriorAdapters()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 206
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->unregisterDataSetObserver()V

    .line 207
    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 208
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->clear()V

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 211
    .end local v0           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->resetIndexCache()V

    .line 212
    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->notifyDataSetChanged()V

    .line 213
    return-void
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/htc/opensense/plugin/HostListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 408
    iget-object v2, p0, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->mRemoteAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;

    .line 409
    .local v0, ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    iget-object v2, v0, Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;->observer:Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;

    iget-object v2, v2, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {p0}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    goto :goto_0

    .line 411
    .end local v0           #ap:Lcom/htc/opensense/plugin/AmortizedHostAdapter$AdapterPosition;
    :cond_0
    return-void
.end method
