.class public abstract Lcom/htc/fusion/fx/controls/FxBaseAdapter;
.super Ljava/lang/Object;
.source "FxBaseAdapter.java"


# instance fields
.field protected mMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecyclingSize:I

.field protected mSyncMessageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mVirtualSize:I

.field protected mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field protected mfxListView:Lcom/htc/fusion/fx/controls/FxListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    return-void
.end method


# virtual methods
.method public bindListView(Lcom/htc/fusion/fx/controls/FxListView;)V
    .locals 2

    iget v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    iget v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;II)V

    return-void
.end method

.method public bindListView(Lcom/htc/fusion/fx/controls/FxListView;I)V
    .locals 1

    iget v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->bindListView(Lcom/htc/fusion/fx/controls/FxListView;II)V

    return-void
.end method

.method public bindListView(Lcom/htc/fusion/fx/controls/FxListView;II)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mMessageListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getAsyncListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mSyncMessageListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mSyncMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    :cond_1
    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    iput p2, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    iput p3, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mMessageListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/fusion/fx/controls/FxBaseAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter$1;-><init>(Lcom/htc/fusion/fx/controls/FxBaseAdapter;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mMessageListener:Lcom/htc/fusion/fx/MessageListener;

    :cond_2
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getAsyncListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mSyncMessageListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter$2;-><init>(Lcom/htc/fusion/fx/controls/FxBaseAdapter;)V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mSyncMessageListener:Lcom/htc/fusion/fx/MessageListener;

    :cond_3
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mSyncMessageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getCollection()Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getCollection()Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->enableVirtualization(I)V

    :goto_1
    iget v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->enableRecycling(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->getCount()I

    move-result v0

    invoke-static {v0}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mVirtualSize:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->disableVirtualization()V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Virtual size can\'t less -1."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mRecyclingSize:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->disableRecycling()V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "RecyclingSize size can\'t less -1."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getCount()I
.end method

.method public getFxListViewCollection()Lcom/htc/fusion/fx/controls/FxListViewCollection;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 7

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "this adapter don\'t bind any ListView yet."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->getCount()I

    move-result v1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getCollectionCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v3

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getLastVisibleIndex()I

    move-result v2

    if-le v1, v0, :cond_1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v1, v0

    invoke-virtual {v4, v0, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->insertItems(II)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-lt v4, v2, :cond_3

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    add-int/lit8 v4, v1, -0x1

    if-lt v4, v3, :cond_5

    add-int/lit8 v4, v1, -0x1

    sub-int v4, v2, v4

    if-lt v3, v4, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x1

    sub-int v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_1

    :cond_5
    sub-int v4, v0, v1

    if-le v1, v4, :cond_6

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public notifyDataSetChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this adapter don\'t bind any ListView yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v0, p1, p2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V

    return-void
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V

    return-void
.end method
