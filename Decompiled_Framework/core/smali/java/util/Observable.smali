.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field changed:Z

.field observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected clearChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    return-void
.end method

.method public countObservers()I
    .locals 1

    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasChanged()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z

    return v0
.end method

.method public notifyObservers()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V

    iget-object v6, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/util/Observer;

    iget-object v6, p0, Ljava/util/Observable;->observers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-interface {v4, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_1
    return-void
.end method

.method protected setChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    return-void
.end method
