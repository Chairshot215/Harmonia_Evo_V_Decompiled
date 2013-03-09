.class public Lcom/htc/fusion/fx/controls/FxArrayAdapter;
.super Lcom/htc/fusion/fx/controls/FxBaseAdapter;
.source "FxArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/fusion/fx/controls/FxBaseAdapter;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mAutoRefresh:Z

.field private final mContext:Landroid/content/Context;

.field private final mFxTextLabelControl:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field protected mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mAutoRefresh:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mFxTextLabelControl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->insert(Ljava/lang/Object;I)V

    return-void
.end method

.method public addList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->insert(Ljava/util/List;I)V

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->getCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mAutoRefresh:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataSource()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->insert(Ljava/util/List;I)V

    return-void
.end method

.method public insert(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mAutoRefresh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->insertItems(II)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->removeRange(II)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->removeRange(II)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRange(II)V
    .locals 3

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mAutoRefresh:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v1, p1, p2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mAutoRefresh:Z

    return-void
.end method

.method public setDataSource(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mFxTextLabelControl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mFxTextLabelControl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxTextLabel;

    sget-boolean v1, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "FxListItem1.getDescendant(mFxTextLabelControl)=null"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->updateList(Ljava/util/List;I)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateList(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mObjects:Ljava/util/List;

    add-int v3, p2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/fusion/fx/controls/FxArrayAdapter;->mAutoRefresh:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/fusion/fx/controls/FxBaseAdapter;->mfxCollection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, p2, v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
